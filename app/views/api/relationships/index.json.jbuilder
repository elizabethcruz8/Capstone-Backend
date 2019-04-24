json.array! @relationships.each do |relationship|
  json.partial! "relationship.json.jbuilder", relationship: relationship
end 