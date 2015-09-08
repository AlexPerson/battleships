class Ship
	attr_reader :position, :hits

	def initialize (position)
		@position = position
		@hits = 0
	end
end