namespace :dev do

  desc "Setup Development"
  task setup: :environment do
    images_path = Rails.root.join('public', 'system')

    puts "Executando o setup para desenvolviment..."

    puts "APAGANDO BD... #{%x(rails db:drop)}"
    puts "Apagando imagens de public/system #{%x(rm -rf #{images_path})}"
    puts "Criando BD... #{%x(rails db:create)}"
    puts %x(rails db:migrate)
    puts %x(rails db:seed)
    puts %x(rails dev:adm)
    puts %x(rails dev:members)
    puts %x(rails dev:categories)
    puts %x(rails dev:ads)
    puts %x(rails dev:comments)

    puts "... Setup completado com sucesso!"
  end

###################################################################################

  desc "Cria Adms Fakes"
  task adm: :environment do
    puts "Cadastrando Administradores fakes..."

    10.times do
      Admin.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "123456",
        password_confirmation: "123456",
        role: [0,0,1,1,1].sample
      )
    end

    puts "... Administrador cadastrado com sucesso!"
  end

###################################################################################

  desc "Cria Membros Fake"
  task members: :environment do
    puts "Cadastrando MEMBROS..."

    100.times do
      member = Member.new(
        email: Faker::Internet.email,
        password: "123456",
        password_confirmation: "123456"
      )

      member.save!
    end

    puts "MEMBROS cadastrados com sucesso!"
  end

###################################################################################
  desc "Cria Anúncios Fakes"
  task ads: :environment do
    puts "Cadastrando Anúncios Fake"

    5.times do
      Ad.create!(
        title: Faker::Beer.name,
        description_md: %x(ruby -e "require 'doctor_ipsum'; puts DoctorIpsum::Markdown.entry"),
        description_short: LeroleroGenerator.sentence([2,3].sample),
        member: Member.first,
        category: Category.all.sample,
        price: "#{Random.rand(500)},#{Random.rand(99)}",
        finish_date: Date.today + Random.rand(90),
        picture: File.new(Rails.root.join('public', 'templates', 'images-for-ads', "#{Random.rand(9)}.jpg"), 'r')
        )
    end


    100.times do
      Ad.create!(
        title: Faker::Beer.name,
        description_md: %x(ruby -e "require 'doctor_ipsum'; puts DoctorIpsum::Markdown.entry"),
        description_short: LeroleroGenerator.sentence([2,3].sample),
        member: Member.all.sample,
        category: Category.all.sample,
        price: "#{Random.rand(500)},#{Random.rand(99)}",
        finish_date: Date.today + Random.rand(90),
        picture: File.new(Rails.root.join('public', 'templates', 'images-for-ads', "#{Random.rand(9)}.jpg"), 'r')
      )
    end

    puts "... Anúncios cadastrados com sucesso!"
  end


###################################################################################

  desc "Cria Categorias Fakes"
  task categories: :environment do
    puts "Cadastrando as CATEGORIAS..."
    categories = [  "Animais e acessórios",
                    "Esportes",
                    "Para a sua casa",
                    "Eletrônicos e celulares",
                    "Música e hobbies",
                    "Bebês e crianças",
                    "Moda e beleza",
                    "Veículos e barcos",
                    "Imóveis",
                    "Empregos e negócios" ]

    categories.each do |category|
      Category.friendly.find_or_create_by(description: category)
    end

    puts "... CATEGORIAS cadastradas com sucesso!"
  end

###################################################################################

  desc "Cria Comentários Fake"
  task comments: :environment do
    puts "Cadastrando COMENTÁRIOS..."

    Ad.all.each do |ad|
      (Random.rand(3)).times do
        Comment.create!(
          body: LeroleroGenerator.sentence([2,3].sample),
          member: Member.all.sample,
          ad: ad
          )
      end
    end

    puts "COMENTÁRIOS cadastrados com sucesso!"
  end

end
