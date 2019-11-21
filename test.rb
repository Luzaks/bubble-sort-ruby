# Bubble sort
# frozen_string_literal: true

# rubocop:disable MethodLength
def bubble_sort(arr)
  temporal = true
  i = arr.length
  while temporal
    temporal = false
    (i - 1).times do |x|
      if arr[x] > arr[x + 1]
        arr[x], arr[x + 1] = arr[x + 1], arr[x]
        temporal = true
      end
    end
  end
  print arr
end
bubble_sort([4, 3, 78, 2, 0, 2])

# Bubble sort yield

def bubble_sort_by(arr)
  temporal = true
  while temporal
    temporal = false
    (arr.length - 1).times do |x|
      temporal2 = yield arr[x], arr[x + 1]
      if temporal2.positive?
        arr[x], arr[x + 1] = arr[x + 1], arr[x]
        temporal = true
      end
    end
  end
  print arr
end
# rubocop: enable MethodLength

bubble_sort_by(%w[hi hey hello]) do |left, right|
  left.length <=> right.length
end
