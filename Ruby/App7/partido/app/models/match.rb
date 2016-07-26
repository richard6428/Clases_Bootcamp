class Match < ActiveRecord::Base
	has_many :team_matches
	has_many :teams, trough: :team_matches
end
