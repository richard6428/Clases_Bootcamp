json.extract! teacher, :id, :document, :name, :lastname, :phone, :email, :class, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)