# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email:"r@mail.com", username:"Rubocop",name:"Alvaro",password:"123456")
user = User.create(email:"a@mail.com", username:"Chezz",name:"GRecia",password:"123456")
user = User.create(email:"b@mail.com", username:"Paco12",name:"FRanco",password:"123456")
user = User.create(email:"c@mail.com", username:"Codeka",name:"Renata",password:"123456")
user = User.create(email:"d@mail.com", username:"LaPituka",name:"Sandra",password:"123456")
user = User.create(email:"e@mail.com", username:"Pablo",name:"Jose francisco",password:"123456")
user = User.create(email:"f@mail.com", username:"R3nzo",name:"Renzo ",password:"123456")
user = User.create(email:"g@mail.com", username:"Anonimus",name:"Sin identidad",password:"123456")

tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:1 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:1 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:2 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:2 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:3 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:3 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:4 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:5 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:6 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:7 )
tweet= Tweet.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id:8 )

comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:1, tweet_id:1)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:1, tweet_id:2)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:1, tweet_id:3)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:1, tweet_id:4)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:2, tweet_id:1)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:2, tweet_id:2)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:2, tweet_id:3)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:3, tweet_id:1)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:3, tweet_id:2)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:3, tweet_id:3)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:4, tweet_id:7)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:4, tweet_id:8)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:5, tweet_id:11)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:5, tweet_id:12)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:6, tweet_id:1)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:7, tweet_id:1)
comments = Comment.create(body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",user_id:8, tweet_id:1)
