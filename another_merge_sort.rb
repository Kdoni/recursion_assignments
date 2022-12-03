def merge_sort(arr)
  if arr.length < 2
    arr
  else
    half = arr.length / 2
    first_half = merge_sort(arr.take(half))
    second_half = merge_sort(arr.drop(half))
    merge(first_half, second_half)
  end
end

def merge(f, s, result = [])
  until f.empty? || s.empty?
    if f.first < s.first
      result << f.shift
    elsif f.first == s.first
      result << f.shift
      result << s.shift
    else
      result << s.shift
    end
  end
  result + s + f
end

test = [1, 2, 3, 4, 2, 6, 3, 6, 2, 1, 7, 2]

p merge_sort(test)
