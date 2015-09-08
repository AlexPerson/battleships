class Ship
	attr_reader :position
	attr_accessor :hits

	def initialize (position)
		@position = position
		@hits = 0
	end
end