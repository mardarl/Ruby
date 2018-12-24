# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'faker'
#5.times.do
#Posts.create([{
#title: Faker::Book.title,
#body: Faker::Lorem.sentence(20, false, 0),
#author: Faker::Book.author
#}])
#end
#Product.destroy_all
require 'populator'
require 'faker'

Post.delete_all
Comment.delete_all
10.times do
   post = Post.create
   post.title = Faker::Book.title
   post.body = Faker::Lorem.paragraph
   post.author = Faker::Book.author
   post.save
   5.times do
     comment = Comment.create
     comment.body = Faker::Lorem.paragraph
     comment.author = Faker::Book.author
     comment.post_id = post.id
     comment.save
   end
end
