def fibs_rec_tsk(number)
  if number < 2
    number
  else
    fibs_rec_tsk(number - 1) + fibs_rec_tsk(number - 2)
  end
end

def fibs_rec(number)
  result = []
  while number >= 0
    result.push(fibs_rec_tsk(number))
    number -= 1
  end
  result.shift
  result.reverse
end
p fibs_rec(8)
