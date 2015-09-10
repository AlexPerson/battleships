require '~/projects/battleships/lib/player_class.rb'

describe Player do
	it {is_expected.to respond_to(:place).with(1).argument}

	it 'places a ship on the player\'s board and remembers its position' do
		subject.place(Ship.new('A1', 'verticle'))
		expect(subject.ship_positions).to include ['A1', 'A2']
	end

	it 'reports a miss when no ship in position' do
		expect(subject.fire('A1')).to eq 'Miss'
	end

	it 'reports a hit when ship is in position' do
		ship1 = Ship.new('A1', 'verticle')
		ship2 = Ship.new('A2', 'verticle')
		subject.place(ship1)
		subject.place(ship2)
		expect(subject.fire('A1')).to eq 'Hit'
	end

	it 'records positions of hits' do
		ship1 = Ship.new('A1', 'verticle')
		ship2 = Ship.new('B2', 'verticle')
		subject.place(ship1)
		subject.place(ship2)
		subject.fire('A1')
		expect(subject.hits_array).to eq ['A1']
	end

	it 'records positions of misses' do
		subject.fire('B1')
		expect(subject.miss_array).to include 'B1'
	end

	it 'ends the game when all of a player\'s ships are sunk' do
		ship = Ship.new('A1', 'verticle')
		subject.place(ship)
		subject.fire('A2')
		expect { subject.fire('A1') }.to raise_error 'Game over, Player loses.'
	end

	xit 'raises an error when placing a ship in another ship\'s position' 
		
end