json.id @recommendation.id
json.name @recommendation.name
json.description @recommendation.description
json.image_url @recommendation.image_url
json.category do
  json.id @recommendation.category.id
  json.name @recommendation.category.name
end