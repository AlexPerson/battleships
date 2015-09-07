require '~/projects/battleships/lib/ship_class.rb'
class Player
	attr_reader :ship_array, :hits_array, :miss_array
	def initialize
		@ship_array = []
		@hits_array = []
		@miss_array = []
	end
	def place ship
		@ship_array << ship.position
	end
	def fire target
		unless @ship_array.empty?
			if @ship_array.include?(target)
				@hits_array << target
				@ship_array.delete[target]
				"Hit"
			else
				@miss_array << target
				"Miss"
			end
		else
			fail 'Game over, Player loses.'
		end
	end
end