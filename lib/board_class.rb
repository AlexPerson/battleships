# require '~/projects/battleships/lib/ship_class.rb'
# class Board
# 	attr_reader :ship_array
# 	def initialize
# 		@ship_array = []
# 	end
# 	def place ship
# 		@ship_array << ship.position
# 	end
# 	def fire target
# 		@ship_array.include?(target) ? 'Hit' : 'Miss'
# 	end
# end