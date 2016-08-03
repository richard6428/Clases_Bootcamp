json.array!(@matches) do |match|
  json.extract! match, :id, :result, :date, :winner
  json.url match_url(match, format: :json)
end
