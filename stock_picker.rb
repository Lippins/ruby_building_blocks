def stock_picker (array)
  initial_profit = 0
  result = []
  array.each do |price|
    i = array.index(price) + 1

    while (i < array.length)
      profit = array[i] - price
      if profit > initial_profit
        initial_profit = profit
        result = []
        result << array.index(price) << array.rindex(array[i])
  
      end 
      i = i + 1
    end
  end
  result
end

stock_picker([17,3,6,9,15,8,6,1,10])

