json.extract! post, :id, :tilte, :publishDate, :hat, :content, :picture, :created_at, :updated_at
json.url post_url(post, format: :json)
