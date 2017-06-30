json.extract! post, :id, :title, :publishDate, :hat, :content, :avatar, :created_at, :updated_at
json.url post_url(post, format: :json)
