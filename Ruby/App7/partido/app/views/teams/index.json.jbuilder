json.array!(@teams) do |team|
  json.extract! team, :id, :id_team, :name, :champion
  json.url team_url(team, format: :json)
end
