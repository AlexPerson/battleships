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
			puts "Hit"
			you_lose
		else
			@miss_array << target
			"Miss"
		end
	end
	def you_lose
		fail 'Game over, Player loses.' if :ship_array.empty?
		# if ship_array.empty?
		#  true
		# else
		#  "Keep Playing"
		# end
	end
end