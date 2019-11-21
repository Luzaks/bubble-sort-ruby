#Bubble sort
def bubble_sort(arr)
temporal=true

i = arr.length

  while temporal do 
    temporal=false
    (i-1).times do |x| 
      if arr[x] > arr[x+1]
      arr[x], arr[x+1] = arr[x+1],arr[x]
      temporal=true
      end 
    end
  end
  print arr
end


bubble_sort([4,3,78,2,0,2])

#Bubble sort yield

def bubble_sort_by(arr)
  temporal = false
    (arr.length - 1).times do |x|
      temporal_2 = yield arr[x], arr[x + 1]
      if temporal_2 > 0
        arr[x], arr[x + 1] = arr[x + 1], arr[x]
        temporal = true
      end
    end
  print arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length <=> right.length
end