def check_if_prime(x,primes)      #checks if number x is prime, must be fed all primes <x
	primes.each do |prime|
    return false if x % prime == 0 
    break if prime**2 > x         #this is to limit loops, if there was a prime greater than the sqrt there'd be one less than it that would have already been tested
  end
end

primes=[2]    #because I'm using a method to determine if a number is prime by dividing by all previous, need to feed it first
factoring=600851475143
factors=[]
(2..factoring).each do |x|        #this loop is to go through numbers to determine if they're primes, then factors
  if check_if_prime(x,primes) != false
    primes<<x
    if factoring % x == 0
      factors<<x
    end
  break if primes[-1]**2>factoring
  end
end
puts factors[-1]
