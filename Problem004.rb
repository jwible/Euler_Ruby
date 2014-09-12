answer = 0
(100..999).each do |a|
  (100..999).each do |b|
    if (a*b).to_s== (a*b).to_s.reverse
      if a*b > answer
        answer=a*b
      end
    end
  end
end
puts answer
