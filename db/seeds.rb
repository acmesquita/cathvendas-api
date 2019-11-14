# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user = User.create( {name: "Catharina"})
# Company.create({name: "Catha", user: user})

# Cash.create({name: "Carteira", company: Company.find(1)})

Registry.create({description: "Cartao de Crédito", value: 1234.0, cash_id: 1, kind: 'out'})