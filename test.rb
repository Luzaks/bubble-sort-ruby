def bubble_sort(arr)
  temporal = true
  i = arr.length
  while temporal
    temporal = false
    (i - 1).times do |x|
      if arr[x] > arr[x + 1]
        arr[x], arr[x + 1] = arr[x + 1], arr[x],
                             temporal = true
      end
    end
  end
  arr
end
unsorted = (1..10).to_a.reverse!
p bubble_sort(unsorted)
p bubble_sort([4, 3, 78, 2, 0, 2])


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
  arr
end

unsorted = %w[hello hi hey]

p bubble_sort_by(unsorted) { |left, right|
  left.length <=> right.length
}
