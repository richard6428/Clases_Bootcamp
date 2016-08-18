json.extract! article, :id, :title, :body, :visitsCount, :User_id, :employee_id, :created_at, :updated_at
json.url article_url(article, format: :json)