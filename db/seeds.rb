# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying patients'
Patient.destroy_all

puts 'Creating patients'
Patient.create!(name: 'Gertrudes', full_name: 'Maria Gertrudes Silva', sex: 1, dob: Date.new(1936, 9, 16), citizen_no: '12345678', nif_no: '99999129', health_no: '11118111', social_security_no: '33333233', clothes_tag: 'MGS')
Patient.create!(name: 'Ana', full_name: 'Ana Gomes', sex: 1, dob: Date.new(1940, 5, 11), citizen_no: '12343678', nif_no: '99999998', health_no: '11113411', social_security_no: '33335633', clothes_tag: 'MGS')
Patient.create!(name: 'Alberto', full_name: 'Alberto João Jardim', sex: 2, dob: Date.new(1932, 3, 12), citizen_no: '12345673', nif_no: '99999569', health_no: '11135111', social_security_no: '33356333', clothes_tag: 'MGS')
puts 'Done!'
