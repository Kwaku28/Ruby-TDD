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
end
