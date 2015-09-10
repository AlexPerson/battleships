require '~/projects/battleships/lib/player_class.rb'
require '~/projects/battleships/lib/ship_class.rb'
describe Ship do
	let(:player) {double :player}

	it 'can be hit' do
		ship = Ship.new('A1', 'verticle')
		ship2 = Ship.new('B2', 'verticle')
		player = Player.new
		player.place(ship)
		player.place(ship2)
		player.fire('A1')
		# allow(player).to receive(:place).with(ship)
		# allow(player).to receive(:fire).with("A1")
		expect(ship.hits).to eq 1
	end

		it 'has position when created' do
		ship = Ship.new('A1', 'verticle')
		expect(ship.position).to eq ['A1', 'A2']
	end

	it 'has an orientation when created' do
		ship = Ship.new('A1', 'verticle')
		expect(ship.orientation).to eq 'verticle'
	end

	it 'calculates remaining coordinates from one passed with verticle orientation' do
		ship = Ship.new('A1', 'verticle')
		expect(ship.position).to eq ['A1', 'A2']
	end

	it 'calculates remaining coordinates from one passed with horizontal orientation' do
		ship = Ship.new('A1', 'horizontal')
		expect(ship.position).to eq ['A1', 'B1']
	end

	it 'raises an error when orientation is not verticle or horizontal' do
		expect{Ship.new('A1', 'whatever')}.to raise_error 'Enter verticle or horizontal'
	end
end