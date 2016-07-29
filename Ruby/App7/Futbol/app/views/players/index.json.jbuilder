json.array!(@players) do |player|
  json.extract! player, :id, :team_id, :name, :age, :city
  json.url player_url(player, format: :json)
end
