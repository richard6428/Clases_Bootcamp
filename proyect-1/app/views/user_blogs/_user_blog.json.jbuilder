json.extract! user_blog, :id, :document, :name, :lastname, :phone, :email, :created_at, :updated_at
json.url user_blog_url(user_blog, format: :json)