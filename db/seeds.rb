# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Category(id: integer, name: string, description: string, created_at: datetime, updated_at: datetime) 
antiques = Category.create!(name:"antiques", description:"Antiques of all eras")
barter = Category.create!(name:"barter", description:"Stuff you can barter ")
bikes = Category.create!(name:"bikes", description:"Bikes")
books = Category.create!(name:"books", description:"Books")
collectibles = Category.create!(name:"collectibles", description:"All types of collectibles")
computers = Category.create!(name:"computers", description:"Get your ZX81 here")
furniture = Category.create!(name:"furniture", description:"Mouldy old sofas aplenty")
household = Category.create!(name:"household", description:"Magimix magimix rah rah rah ")

# Article(id: integer, category_id: integer, title: string, content: string, token: string) 

Category.all.each do |cat|
  5.times do
    cat.articles.create(title:Faker::Commerce.product_name, content: Faker::Lorem.paragraph)
  end
end