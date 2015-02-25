class Country < ActiveRecord::Base
	belongs_to :player
	after_create :populate

	def populate
		pop = rand(0..100)
		self.population = pop
	end

end
