# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(id: 1, email: "1@com", name: "kawanishi", password: "019283")
# User.create(id: 2, email: "2@com", name: "mizuta", password: "123456")
# User.create(id: 3, email: "3@com", name: "wagyu", password: "098765")

Book.create(id: 1, title: "ruby", body: "fun!", user_id: "1")
Book.create(id: 2, title: "html", body: "dificult..", user_id: "1")
Book.create(id: 3, title: "rails", body: "enjoy!", user_id: "1")