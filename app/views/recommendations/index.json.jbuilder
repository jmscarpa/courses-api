json.array! @recommendations do |recommendation|
  json.id recommendation.id
  json.name recommendation.name
  json.image_url recommendation.image_url
  json.category recommendation.category.name
end