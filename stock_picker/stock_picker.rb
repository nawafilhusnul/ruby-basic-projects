def stock_picker(array)
  res = []
  max_profit = 0
  array.each_with_index do |price, index|
    array.each_with_index do |price2, index2|
      if index2 > index && price2 - price > max_profit
        max_profit = price2 - price
        res = [index, index2]
      end
    end
  end
  res
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([1,2,3,4,5,6,7,8,9,10])
puts stock_picker([10,9,8,7,6,5,4,3,2,1])
puts stock_picker([10,9,2,7,6,5,4,3,2,1])

