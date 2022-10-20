json.id @recommendation.id
json.name @recommendation.name
json.description @recommendation.description
json.image_url @recommendation.image_url
json.category do
  json.id @recommendation.category.id
  json.name @recommendation.category.name
end

json.comments @recommendation.comments do |comment|
  json.id comment.id
  json.content comment.content
  json.created_at comment.created_at
  json.user do
    json.name comment.user.name
    json.picture_url comment.user.picture_url
  end
end