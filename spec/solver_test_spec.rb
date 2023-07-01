require_relative '../solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 for the factorial of 0' do
      expect(solver.factorial(0)).to eq 1
    end

    it 'returns the correct factorial' do
      expect(solver.factorial(5)).to eq 120
      expect(solver.factorial(10)).to eq 3_628_800
    end

    it 'raises an error for negative inputs' do
      expect { solver.factorial(-10) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'should reverse a word' do
      expect(solver.reverse('hello')).to eq 'olleh'
      expect(solver.reverse('Lawrence')).to eq 'ecnerwaL'
    end
  end

  describe '#fizzbuzz' do
    it 'Should return "fizz" when N divisible by 3' do
      expect(solver.fizzbuzz(9)).to eq('fizz')
      expect(solver.fizzbuzz(21)).to eq('fizz')
    end

    it 'should return "buzz" when divisible by 5' do
      expect(solver.fizzbuzz(10)).to eq('buzz')
      expect(solver.fizzbuzz(50)).to eq('buzz')
    end

    it 'should return "fizzbuzz" when divisible by both 3 and 5' do
      expect(solver.fizzbuzz(45)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'should return the string of other cases' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(16)).to eq('16')
    end
  end 
end
