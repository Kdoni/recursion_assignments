def fibs_rec(number, result = [])
  result.push(number)
  if number < 2
    number
  else
    fibs_rec(number - 1) + fibs_rec(number - 2)
  end
  result
end

p fibs_rec(8)
