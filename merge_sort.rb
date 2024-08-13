def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2
  left_half = array[0...mid]
  right_half = array[mid...array.length]

  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  sorted_array = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted_array << left.shift
    else
      sorted_array << right.shift
    end
  end

  sorted_array + left + right
end

puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1]).inspect # [0, 1, 1, 2, 3, 5, 8, 13]
puts merge_sort([105, 79, 100, 110]).inspect       # [79, 100, 105, 110]
