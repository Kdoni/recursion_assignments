def merge_sort(array)
  if array.length < 2
    array
  else
    half = (array.length / 2).floor
    first_half = merge_sort(array[0..half - 1])
    second_half = merge_sort(array[half..array.length])
    merge(first_half, second_half)
  end
end

def merge(first, second)
  if first.empty?
    second
  elsif second.empty?
    first
  elsif first.first < second.first
    [first.first] + merge(first[1..first.length], second)
  else
    [second.first] + merge(first, second[1..second.length])
  end
end

test = [5, 3, 4]

p merge_sort(test)
