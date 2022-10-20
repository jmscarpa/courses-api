json.id @comment.id
json.content @comment.content
json.created_at @comment.created_at
json.user do
  json.name @comment.user.name
  json.picture_url @comment.user.picture_url
end