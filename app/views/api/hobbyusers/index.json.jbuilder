json.array! @hobbyusers.each do |hobbyuser|
  json.partial! "hobbyuser.json.jbuilder", hobbyuser: hobbyuser 
end 