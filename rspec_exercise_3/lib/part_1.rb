def is_prime?(number)
  return false if number < 2

  (2...number).each { |factor| return false if number % factor == 0 }
  true
end

def nth_prime(n)
  i = 0
  j = 2
  while i < n
    i += 1 if is_prime?(j)
    return j if i == n
    j += 1
  end
  p j
end

def prime_range(min, max)
  primeArray = (min..max).select { |number| is_prime?(number) }
end
