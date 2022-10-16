# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length < 2

  # Split into two and sort
  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..])

  # Merge two sides
  merged = []
  until left.empty? || right.empty?
    next_el = left.first <= right.first ? left.shift : right.shift
    merged << next_el
  end
  merged.concat(left).concat(right)
end

pp merge_sort([1, 2, 3, 4, 6, 5, 7, 8])
pp merge_sort([8, 2, 6, 4, 3, 5, 7, 1])
pp merge_sort([8, 2, 2, 4, 3, 5, 7, 1])

test = []
100.times { test << rand(100) }
pp merge_sort(test)
