require_relative '../lib/sub_class.rb'

describe Sub  do

	it 'has position when created' do
		sub = Sub.new('A1', 'verticle')
		expect(sub.position).to eq ['A1', 'A2']
	end

	it 'has an orientation when created' do
		sub = Sub.new('A1', 'verticle')
		expect(sub.orientation).to eq 'verticle'
	end

	it 'calculates remaining coordinates from one passed with verticle orientation' do
		sub = Sub.new('A1', 'verticle')
		expect(sub.position).to eq ['A1', 'A2']
	end

	it 'calculates remaining coordinates from one passed with horizontal orientation' do
		sub = Sub.new('A1', 'horizontal')
		expect(sub.position).to eq ['A1', 'B1']
	end

	it 'raises and error when orientation is not verticle or horizontal' do
		expect{Sub.new('A1', 'whatever')}.to raise_error 'Enter verticle or horizontal'
	end
end