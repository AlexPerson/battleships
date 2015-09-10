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
		@ship_positions.flatten.each do |ship_pos|
			ship.position.each {|coor| fail 'That position is taken. Choose another.' if coor == ship_pos}
		end
		@ships << ship
		@ship_positions << ship.position
	end
	def fire target
		hit_ship = @ships.find {|ship| ship.position.include?(target)}
		if hit_ship != nil
			hit_ship.hits += 1
			@ship_positions.each{|ship| ship.delete(target) if ship.include?(target)}
			@ship_positions.delete_if{|ship| ship.empty?}
			@hits_array << target
			ships_left
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
	def ships_left
		fail 'Game over, Player loses.' if @ship_positions.empty?
	end
end