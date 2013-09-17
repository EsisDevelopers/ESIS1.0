# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

#Seteando la base de datos
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name(role)
  puts 'role: ' << role
end

#User por defecto para desarrollo
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :codigo => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.codigo
user.add_role :admin

#Creacion de usuario
a=34000
50.times do |i|
    a+=1
	User.create!(
		:codigo =>"09-#{a}",
        :email => Faker::Internet.email,
        :password => "zxcvbnm#{i}")
end

#Creación de usuario sin registro previo
#a=34000
#50.times do |i|
#    a+=1
#	User.create!( :codigo =>"12-#{a}")
#end

