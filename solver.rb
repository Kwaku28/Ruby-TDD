class Solver
  def factorial(n)
    raise ArgumentError, 'Input must be a non-negative integer' if n < 0

    return 1 if n.zero?

    result = 1
    (1..n).each do |i|
      result *= i
    end
    result
  end

  def reverse(word)
    word.reverse
  end
end
