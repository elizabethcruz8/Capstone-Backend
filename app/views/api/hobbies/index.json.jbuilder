json.array! @hobbies.each do |hobby|
  json.partial! "hobby.json.jbuilder", hobby: hobby 
end 