class Team < ActiveRecord::Base
	has_many :players
	has_many :clashes
	has_many :matches, through: :clashes

	def create_team
		Player.where('team_id is ?', nil).to_a.sample(5).each do |player|
			player.update(team_id: id)
		end
	end

	def sum_points
		matches = self.matches 
		self.points = 0
		matches.each do |m|
			if m.result == self.name
				self.points = points + 3
			elsif m.result == 'Empate'
				self.points += 1
			end
		end
		self.save
		self.points
	end
end
