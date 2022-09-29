json.array! @recommendations do |recommendation|
  json.id recommendation.id
  json.name recommendation.name
  json.category recommendation.category.name
end