
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


