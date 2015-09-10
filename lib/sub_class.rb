class Sub
	
	attr_reader :position, :orientation

	def initialize (position, orientation)
		@position = position
		@orientation = orientation
		if orientation == 'verticle'
			verticle_align
		elsif orientation == 'horizontal'
			horizontal_align
		else
			fail 'Enter verticle or horizontal'
		end
	end

	def verticle_align
		position_split = @position.split('', 2)
		last_number = position_split.last.to_i + 1
		last_coordinate = [position_split.first, last_number].join('')
		@position = [@position, last_coordinate]
	end

	def horizontal_align
		position_split = @position.split('', 2)
		first_letter = position_split.first.next
		last_coordinate = [first_letter, position_split.last].join('')
		@position = [@position, last_coordinate]
	end
end