require 'rspec'

	def fibbonacci num
		(1..num).inject([0,1]) {|fib| fib << fib.last(2).inject(:+)}
	end

	describe 'fibbonacci' do | |
		it 'properly calculates the fibbonacci value' do
			expect(fibbonacci 10).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
	end
end

fibbonacci 50