json.id user.id 
json.first_name user.first_name 
json.last_name user.last_name
json.email user.email
json.date_of_birth user.date_of_birth
json.state user.state
json.city user.city 
json.image user.image

json.followers user.followers.each do |follower|
  json.id follower.id
  json.image follower.image
  json.first_name follower.first_name
  json.last_name follower.last_name
  json.posts follower.posts
end

json.hobbies user.hobbies.each do |hobby|
  json.id hobby.id 
  json.name hobby.name 
end 

json.hobby_users user.hobby_users.each do |hobbyuser|
  json.users hobbyuser.hobby.users.each do |user|
    if @user.id != user.id
      json.id user.id
      json.first_name user.first_name
      json.hobby user.hobbies.each do |hobby|
        json.name hobby.name 
      end 
    end
  end
end 

json.posts user.posts.each do |post|
  json.id post.id
  json.title post.title 
  json.text post.text
  json.photo  post.photo
  json.video  post.video
  json.user_first_name post.user.first_name

  json.comments post.comments.each do |comment|
    json.id comment.id
    json.text comment.text
    json.user_first_name comment.user.first_name
    json.user_last_name comment.user.last_name
  end

  json.user_last_name post.user.last_name
    json.followers user.followers.each do |follower|
      json.commments follower.comments
    end 
end 

json.comments user.comments.each do |comment|
  json.userid comment.id 
  json.text comment.text 
  json.post  comment.post
  json.postfirstname comment.post.user.first_name
  json.postlastname comment.post.user.last_name

end 

