# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: "foo@bar", password: 'foobar', password_confirmation: "foobar")
User.create!(email: "bar@foo", password: 'foobar', password_confirmation: "foobar")
User.create!(email: "foo@foo", password: 'foobar', password_confirmation: "foobar")
User.create!(email: "bar@bar", password: 'foobar', password_confirmation: "foobar")
User.create!(email: "fooo@bar", password: 'foobar', password_confirmation: "foobar")
User.create!(email: "foo@baar", password: 'foobar', password_confirmation: "foobar")
User.create!(email: "fooo@fooo", password: 'foobar', password_confirmation: "foobar")
User.create!(email: "baar@baar", password: 'foobar', password_confirmation: "foobar")
