class Solver
  def factorial(num)
    if num < 0
      raise RuntimeError, 'RuntimeError'
    elsif (num == 0 or num == 1)
      return 1
    else
      n = num * factorial(num-1)
      return n
    end
  end

  def reverse(word)
    return word.downcase.reverse
  end

  def fizzbuzz(num)
    if num % 3 == 0 && num % 5 == 0
      return 'fizzbuzz'
    elsif num % 3 == 0
      return 'fizz'
    elsif num % 5 == 0
      return 'buzz'
    else
      return num.to_s
    end
  end
end
