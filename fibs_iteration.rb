def fibs(number)
  result = [0, 1]
  iterator = 0
  progress = 0
  while iterator < number - 2
    progress = result[-1] + result[-2]
    result << progress
    iterator += 1
  end
  result
end

p fibs(8)
