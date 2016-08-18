json.extract! employee, :id, :document, :name, :lastname, :phone, :birthDate, :email, :position, :uvaId, :created_at, :updated_at
json.url employee_url(employee, format: :json)