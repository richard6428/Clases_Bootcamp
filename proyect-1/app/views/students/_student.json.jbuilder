json.extract! student, :id, :document, :names, :lastname, :phone, :email, :created_at, :updated_at
json.url student_url(student, format: :json)