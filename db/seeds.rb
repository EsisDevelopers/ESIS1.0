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

user = User.find_or_create_by_email :codigo => ENV['ACADEMICO_NAME'].dup, :email => ENV['ACADEMICO_EMAIL'].dup, :password => ENV['ACADEMICO_PASSWORD'].dup, :password_confirmation => ENV['ACADEMICO_PASSWORD'].dup
puts 'user: ' << user.codigo
user.add_role :academico

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

#Pregunta
Pregunta.create(:denominacion => "La Escuela Académico Profesional de Ingeniería en Informática y Sistemas, que gestiona la carrera Profesional, tiene un plan estratégico que ha sido elaborado con la participación de Estudiantes")
Pregunta.create(:denominacion => "Conoces el plan estratégico de la Escuela Académico Profesional de Ingeniería en Informática y Sistemas")
Pregunta.create(:denominacion => "Las actividades académicas como horarios, uso de Aulas y laboratorios, matriculas, exámenes, practicas profesionales están coordinadas para  asegurar el desarrollo del proyecto educativo en tu Escuela académica")
Pregunta.create(:denominacion => "La unidad académica tiene un sistema de gestión de la calidad implementado")
Pregunta.create(:denominacion => "La Unidad Académica tiene un programa implementado  que contribuye  a internalizar  la cultura organizacional en los estudiantes, docentes y administrativos de la carrera profesional")
Pregunta.create(:denominacion => "La Unidad Académica tiene un sistema de información y comunicación implementado en su Escuela")
Pregunta.create(:denominacion => "Conoces el Plan Operativo de la Escuela Académico Profesional de ingeniería en Informática y Sistemas")
Pregunta.create(:denominacion => "La Unidad Académica tiene programas implementados de motivación e incentivos para los estudiantes")
Pregunta.create(:denominacion => "Estás de acuerdo con las  estrategias aplicadas de enseñanza-aprendizaje")
Pregunta.create(:denominacion => "Estás de acuerdo con las estrategias aplicadas para desarrollar tu capacidad de investigación, en cuanto a generación de conocimientos y aplicación de los ya existentes")

#Respuestas default 
Alternativa.create(:opcion => "TA")
Alternativa.create(:opcion => "PA")
Alternativa.create(:opcion => "PA")
Alternativa.create(:opcion => "DE")
Alternativa.create(:opcion => "NC")
Alternativa.create(:opcion => "SI")                                 
Alternativa.create(:opcion => "NO")

#Encuesta
Encuesta.create(:pregunta_id =>1,:respuesta_id =>1, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>1,:respuesta_id =>2, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>1,:respuesta_id =>3, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>1,:respuesta_id =>4, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>1,:respuesta_id =>5, :agrupacion =>"Likert")

Encuesta.create(:pregunta_id =>2,:respuesta_id =>1, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>2,:respuesta_id =>2, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>2,:respuesta_id =>3, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>2,:respuesta_id =>4, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>2,:respuesta_id =>5, :agrupacion =>"Likert")


Encuesta.create(:pregunta_id =>3,:respuesta_id =>1, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>3,:respuesta_id =>2, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>3,:respuesta_id =>3, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>3,:respuesta_id =>4, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>3,:respuesta_id =>5, :agrupacion =>"Likert")


Encuesta.create(:pregunta_id =>4,:respuesta_id =>1, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>4,:respuesta_id =>2, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>4,:respuesta_id =>3, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>4,:respuesta_id =>4, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>4,:respuesta_id =>5, :agrupacion =>"Likert")

Encuesta.create(:pregunta_id =>5,:respuesta_id =>1, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>5,:respuesta_id =>2, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>5,:respuesta_id =>3, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>5,:respuesta_id =>4, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>5,:respuesta_id =>5, :agrupacion =>"Likert")

Encuesta.create(:pregunta_id =>6,:respuesta_id =>1, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>6,:respuesta_id =>2, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>6,:respuesta_id =>3, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>6,:respuesta_id =>4, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>6,:respuesta_id =>5, :agrupacion =>"Likert")

Encuesta.create(:pregunta_id =>7,:respuesta_id =>1, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>7,:respuesta_id =>2, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>7,:respuesta_id =>3, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>7,:respuesta_id =>4, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>7,:respuesta_id =>5, :agrupacion =>"Likert")


Encuesta.create(:pregunta_id =>8,:respuesta_id =>1, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>8,:respuesta_id =>2, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>8,:respuesta_id =>3, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>8,:respuesta_id =>4, :agrupacion =>"Likert")
Encuesta.create(:pregunta_id =>8,:respuesta_id =>5, :agrupacion =>"Likert")


Encuesta.create(:pregunta_id =>9,:respuesta_id =>1, :agrupacion =>"Binario")
Encuesta.create(:pregunta_id =>9,:respuesta_id =>2, :agrupacion =>"Binario")
Encuesta.create(:pregunta_id =>9,:respuesta_id =>3, :agrupacion =>"Binario")
Encuesta.create(:pregunta_id =>9,:respuesta_id =>4, :agrupacion =>"Binario")
Encuesta.create(:pregunta_id =>9,:respuesta_id =>5, :agrupacion =>"Binario")


Encuesta.create(:pregunta_id =>10,:respuesta_id =>1, :agrupacion =>"Binario")
Encuesta.create(:pregunta_id =>10,:respuesta_id =>1, :agrupacion =>"Binario")
Encuesta.create(:pregunta_id =>10,:respuesta_id =>1, :agrupacion =>"Binario")
Encuesta.create(:pregunta_id =>10,:respuesta_id =>1, :agrupacion =>"Binario")
Encuesta.create(:pregunta_id =>10,:respuesta_id =>1, :agrupacion =>"Binario")

#Tema de la encuesta
Tema.create(:titulo =>"Plantilla de encuesta para estudiantes", :descripcion =>"Son plantilla de encuestas orientadas a los estudiantes basadas en el CONEAU")
Tema.create(:titulo =>"Plantilla de encuesta para profesores", :descripcion =>"Son plantilla de encuestas orientadas a los profesores basadas en el CONEAU")
Tema.create(:titulo =>"Plantilla de encueesta para administrativos", :descripcion =>"Son plantilla de encuestas orientadas a los administrativos, basados en el CONEAU")









                
                

