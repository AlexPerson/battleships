require '~/projects/battleships/lib/ship_class.rb'
describe Ship do
	let(:player) {double :player}

	it 'is expected to have a position when created' do
		ship = Ship.new('A1')
		expect(ship.position).to eq('A1')
	end

	it 'can be hit' do
		ship = Ship.new('A1')
		allow(player).to receive(:fire).with("A1").and_return("Hit")
		expect(ship.hits).to eq 1
	end
end