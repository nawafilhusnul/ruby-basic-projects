def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (1...n).each do |i|
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([1,2,3,4,5,6,7,8,9,10])
p bubble_sort([10,9,8,7,6,5,4,3,2,1])
