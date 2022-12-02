def merge_sort(array)
  if array.length < 2
    array
  else
    first_half = array.slice(0, array.length / 2)
    second_half = array.slice(array.index(first_half.last), array.index(array.last))
    merge(merge_sort(first_half), merge_sort(second_half))
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

test = [5, 3, 6, 3, 2, 1, 7]

p merge_sort(test)
