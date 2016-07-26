json.array!(@players) do |player|
  json.extract! player, :id, :id_player, :id_team, :name, :city
  json.url player_url(player, format: :json)
end
