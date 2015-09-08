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
		if @ship_array.include?(target)
			@hits_array << target
			@ship_array.delete(target)
			if @ship_array.empty?
				fail 'Game over, Player loses.'
			else
				"Hit"
			end
		else
			@miss_array << target
			"Miss"
		end
	end
	def you_lose
		fail 'Game over, Player loses.' if @ship_array.empty?
	end
end