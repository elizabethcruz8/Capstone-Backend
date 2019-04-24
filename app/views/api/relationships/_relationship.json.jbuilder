json.id relationship.id
json.follower do
  json.id relationship.follower.id
  json.first_name relationship.follower.first_name
  json.last_name relationship.follower.last_name
end
json.leader do
  json.id relationship.leader.id
  json.first_name relationship.leader.first_name
  json.last_name relationship.leader.last_name
end

