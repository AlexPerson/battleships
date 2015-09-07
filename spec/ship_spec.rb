require '~/projects/battleships/lib/ship_class.rb'
describe Ship do
	it 'is expected to have a position when created' do
		ship = Ship.new(4)
		expect(ship.position).to eq(4)
	end

end