# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length < 2

  mid = arr.length / 2
  # Split into two
  left = arr[0...mid]
  right = arr[mid..-1]
  # Sort left side
  left = merge_sort(left)
  # Sort right side
  right = merge_sort(right)
  # Merge two sides
  left_index = 0
  right_index = 0
  merged = []
  while left_index < left.length && right_index < right.length
    # Compare next left el and first right el
    if left[left_index] <= right[right_index]
      # Add lower el to return array
      merged << left[left_index]
      # Advance counter for the array of lower el
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
