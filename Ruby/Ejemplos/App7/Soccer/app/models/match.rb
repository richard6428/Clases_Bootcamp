class Match < ActiveRecord::Base
	has_many :clashes
	has_many :teams, through: :clashes


	def self.create_matches
		date = DateTime.now
		Team.all.combination(2).to_a.shuffle.each do |com|
			match = Match.create(date: date + 1.day)
			match.teams << com
			date = date + 1.day
		end
	end

	
end
