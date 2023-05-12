# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



categories = Categories.create([
    {
        name: "Funiture",
        icon: ""
    },
    {
        name: "Food",
        icon: ""
    }
    {
        name: "Transportation"
        icon: ""
    }
])

expenses = Expenses.create ([
    {
        name: "Table",
        amount: 1500
    }
    {   
        name: "Magezines"
        amount: 300
    }
]),

Users.create(name: "example",  gmail: "example@example.com", password: "example" )