json.extract! inventory, :id, :reference, :productType, :brand, :quantity, :purchaseDate, :warranty, :idClassroom, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)