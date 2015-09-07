require '~/projects/battleships/lib/board_class.rb'
describe Board do
	it {is_expected.to respond_to(:place).with(1).argument}

	it 'will save a ship\'s position and add it to the board' do
		subject.place(Ship.new('A1'))
		expect(subject.ship_array).to include('A1')
	end
	it 'will report missed hit when no ship in position' do
		expect(subject.fire('example')).to eq 'Miss'
	end
end