namespace :utils do

  desc "Cria Adms Fakes"
  task adm: :environment do
    puts "Cadastrando Administrador Geral..."

    Admin.create!(name: "Administrador Geral", email: "admin@admin.com", password: "123456",
        password_confirmation: "123456", role: 0)
    Admin.create!(name: "Administrador 2", email: "admin2@admin.com", password: "123456",
        password_confirmation: "123456", role: 1)

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

    100.times do
        Ad.create!(
          title: Faker::Beer.name,
          description: LeroleroGenerator.paragraph(Random.rand(3)),
          member: Member.all.sample,
          category: Category.all.sample,
          price: "#{Random.rand(500)},#{Random.rand(99)}"
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
      Category.find_or_create_by(description: category)
    end

    puts "... CATEGORIAS cadastradas com sucesso!"
  end

end
