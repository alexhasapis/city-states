class Country < ActiveRecord::Base
	belongs_to :player
	before_create :populate

	def populate
		pop = rand(0..100)
		self.population = pop
	end

	def set_player_id
		self.player_id = current_player.id
	end

end
