class Country < ActiveRecord::Base
	belongs_to :player
	before_create :populate
	has_many :countryresources
	has_many :resources, through: :countryresources
	after_create :assign_resources

	def assign_resources
		resources = Resource.all
		resources.sample(rand(3..6)).each do |resource|
			assignment = self.countryresources.new({resource_id: resource.id})
			assignment.save
		end
	end

	def populate
		pop = rand(0..100)
		self.population = pop
	end

	def set_player_id
		self.player_id = current_player.id
	end

end
