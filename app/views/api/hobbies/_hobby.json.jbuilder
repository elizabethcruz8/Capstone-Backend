json.id hobby.id 
json.name hobby.name 
json.users hobby.users.each do |user|
  json.id user.id
  json.first_name user.first_name
  json.last_name user.last_name
  json.is_current_user user.id == current_user.id
  json.is_following current_user.leaders.include? user
  json.relationship Relationship.find_by(follower_id: current_user.id, leader_id: user.id)
end