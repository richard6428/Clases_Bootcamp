json.array!(@team_matches) do |team_match|
  json.extract! team_match, :id, :id_match, :id_team
  json.url team_match_url(team_match, format: :json)
end
