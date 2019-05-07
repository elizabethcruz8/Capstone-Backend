json.type "text"
json.author message.author == current_user ? "me" : message.author.id
json.data do
  json.text message.body
end
