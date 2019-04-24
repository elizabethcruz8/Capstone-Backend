User.create!(first_name:"Elizabeth", last_name:"Cruz", email: "test@test.com", password: "password", date_of_birth: "05/08/1992", state: "IL", city:"Chicago")
User.create!(first_name:"Linda", last_name:"Tang", email: "test1@test.com", password: "password1", date_of_birth: "04/01/1992", state: "NY", city:"Brooklyn")
User.create!(first_name:"Stephanie", last_name:"Lopez", email: "test2@test.com", password: "password2", date_of_birth: "10/19/1987", state: "IL", city:"Cicero")
User.create!(first_name:"Gloria", last_name:"Adams", email: "test3@test.com", password: "password3", date_of_birth: "03/16/1994", state: "FL", city:"Miami")
User.create!(first_name:"Cassandra", last_name:"Bucio", email: "test4@test.com", password: "password4", date_of_birth: "01/12/1988", state: "FL", city:"Miami")
User.create!(first_name:"Andrea", last_name:"Ortiz", email: "test5@test.com", password: "password5", date_of_birth: "05/08/1998", state: "IL", city:"Chicago")

Relationship.create!(follower_id:1, leader_id:2)
Relationship.create!(follower_id:2, leader_id:1)
Relationship.create!(follower_id:3, leader_id:1)
Relationship.create!(follower_id:2, leader_id:3)
Relationship.create!(follower_id:3, leader_id:4)

Hobby.create!(name: "Code")
Hobby.create!(name: "Shopping")
Hobby.create!(name: "Softball")
Hobby.create!(name: "Basketball")
Hobby.create!(name: "Dance")
Hobby.create!(name: "Tennis")
Hobby.create!(name: "Sing")
Hobby.create!(name: "Play video games")

HobbyUser.create!(hobby_id: 1, user_id:1)
HobbyUser.create!(hobby_id: 2, user_id:1)
HobbyUser.create!(hobby_id: 1, user_id:5)
HobbyUser.create!(hobby_id: 8, user_id:1)
HobbyUser.create!(hobby_id: 5, user_id:3)
HobbyUser.create!(hobby_id: 4, user_id:2)
HobbyUser.create!(hobby_id: 8, user_id:6)


Post.create!(title: "How to play Black Ops 4", text: "I enjoy COD so much! Do you know how to play? If not, read this guide...", photo: "", video:"", user_id: 2)
Post.create!(title: "FIFA Guide", text: "Here is a guide on how to play FIFA...", photo: "", video:"", user_id: 1)
Post.create!(title: "This is how I get a killstreak", text: "Killstreaks are hard to do, but...", photo: "", video:"", user_id: 1)


Comment.create!(text: "Hey, I've played that map as well. ", post_id:1, user_id:1)
Comment.create!(text: "Lol!", post_id:1, user_id: 2)
Comment.create!(text: "Cool post!", post_id:2, user_id: 5)

