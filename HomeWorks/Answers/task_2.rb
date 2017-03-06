class PrimeMatrix
  def initialize(max)
    @max = max
    fill
  end

  def output
    @array.size.times do
      p @array
      @array << @array.shift
    end
  end

  private

  def fill
    @array = (2..@max).select{ |n| is_prime? n }
  end

  def is_prime?(n)
    return n == 2 if n % 2 == 0
    d = 3
    d += 2 while d * d <= n && n % d != 0
    return d * d > n
  end
end

pm = PrimeMatrix.new(10)
pm.output
