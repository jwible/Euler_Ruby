#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10 001st prime number?

def check_if_prime(x,primes)
  primes.each do |prime|
    if x % prime == 0
      return false
    end
    break if prime**2 > x     #if there was a number less than the sqrt there'd have been one greater than
  end
end

def primes_less_than(y)
  primes = [2]                #initial
  x=2                         #initial
  while primes.length < y
    if check_if_prime(x, primes) != false     #if it's disible by any prime it's not prime, if it isn't it is
      primes<<x
    end
    if primes.length==10001
      puts primes[-1]
    end
    x+=1
  end
end

puts (primes_less_than(10001))
