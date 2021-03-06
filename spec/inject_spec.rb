# Sum some numbers

require './lib/inject'

describe "Array#james_ject" do

	# a good test suite but it's incomplete
	# Your code won't work if the argument is anything but 1 for multiplication

	it "can calculate a moving sum from an array of numbers" do
		expect((5..10).to_a.james_ject { |sum, n| sum + n }).to eq(45)
			# using reduce (5..10).reduce(:+) #=> 45
	end

	it "can calculate a moving multiplication from an array of numbers" do
		expect((5..10).to_a.james_ject(1) { |product, n| product * n }).to eq(151200)
			# (5..10).reduce(1, :*) #=> 151200
	end

	it "can calculate a repetitive operation on text string" do
		filtered = %w{ cat sheep bear }.james_ject do |memo, word|
			memo.length > word.length ? memo : word 
		end			
		expect(filtered).to eq('sheep')
	end

end