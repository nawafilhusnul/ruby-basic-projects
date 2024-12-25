def stock_picker(array)
  min_price = array[0]
  min_index = 0
  max_profit = 0
  res = []

  array.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
    elsif price - min_price > max_profit
      max_profit = price - min_price
      res = [min_index, index]
    end
  end

  res
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([1,2,3,4,5,6,7,8,9,10])
puts stock_picker([10,9,8,7,6,5,4,3,2,1])
puts stock_picker([10,9,2,7,6,5,4,3,2,1])

