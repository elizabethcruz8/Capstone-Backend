json.participants @users.each do |user|
  json.id user == current_user ? "me" : user.id
  json.name user.first_name
  json.imageUrl user.image
end

json.messages @messages.each do |message|
  json.partial! "message.json.jbuilder", message: message
end 