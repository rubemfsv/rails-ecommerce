# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cadastrando membro padrão..."
member = Member.new(
  email: "membro@membro.com",
  password: "123456",
  password_confirmation: "123456"
)
member.build_profile_member

member.profile_member.first_name = Faker::Name.first_name
member.profile_member.second_name = Faker::Name.last_name

member.save!

puts "... Membro cadastrado com sucesso"

##############################################################################################

puts "Cadastrando administrador geral..."

Admin.create!(name: "Administrador Geral", email: "admin@admin.com", password: "123456",
    password_confirmation: "123456", role: 0)
Admin.create!(name: "Administrador 2", email: "admin2@admin.com", password: "123456",
    password_confirmation: "123456", role: 1)

puts "... Administrador cadastrado com sucesso"
