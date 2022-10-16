# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length < 2

  # Split into two and sort
  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])

  # Merge two sides
  left_index = 0
  right_index = 0
  merged = []
  while left_index < left.length && right_index < right.length
    if left[left_index] <= right[right_index]
      merged << left[left_index]
      left_index += 1
    else
      merged << right[right_index]
      right_index += 1
    end
  end
  if right_index == right.length
    merged.concat(left[left_index..-1])
  else
    merged.concat(right[right_index..-1])
  end
  merged
end

pp merge_sort([1, 2, 3, 4, 6, 5, 7, 8])
pp merge_sort([8, 2, 6, 4, 3, 5, 7, 1])
pp merge_sort([8, 2, 2, 4, 3, 5, 7, 1])
