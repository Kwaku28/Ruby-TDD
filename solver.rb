class Solver
  def factorial(num)
    raise ArgumentError, 'Input must be a non-negative integer' if num.negative?

    return 1 if num.zero?

    result = 1
    (1..num).each do |i|
      result *= i
    end
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    if ((n % 3 == 0) && (n % 5 == 0))
    'fizzbuzz'
    elsif ((n % 3) == 0)
        'fizz'
    elsif ((n % 5) == 0)
        'buzz'
    else
        n
    end
  end

end
