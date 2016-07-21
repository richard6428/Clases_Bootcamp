json.array!(@books) do |book|
  json.extract! book, :id, :name, :aunthor_id
  json.url book_url(book, format: :json)
end
