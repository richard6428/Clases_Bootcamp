class Team < ActiveRecord::Base
	has_many :team_matches
	has_many :matches, trough: :team_matches
end
