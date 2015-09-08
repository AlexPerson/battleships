require '~/projects/battleships/lib/ship_class.rb'
class Player
	attr_reader :ship_positions, :hits_array, :miss_array, :ships
	def initialize
		@ships = []
		@ship_positions = []
		@hits_array = []
		@miss_array = []
	end
	def place ship
		@ships << ship
		@ship_positions << ship.position
	end
	def fire target
		hit_ship = @ships.find {|ship| ship.position == target}
		if hit_ship != nil
			hit_ship.hits += 1
			@ship_positions.delete(target)
			@hits_array << target
			"Hit"
		else
			@miss_array << target
		 	"Miss"
		end	
		# if @ship_positions.include?(target)
		# 	@hits_array << target
		# 	@ship_positions.delete(target)
		# 	if @ship_positions.empty?
		# 		fail 'Game over, Player loses.'
		# 	else
		# 		"Hit"
		# 	end
		# else
		# 	@miss_array << target
		# 	"Miss"
		# end
	end
	def ships_left?
		@ship_positions.empty?
	end
end