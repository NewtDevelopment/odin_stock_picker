
# for the input array find the best day to buy and then sell to make the most money
def stock_picker(input)
  days = [0,0]
  maxprice = 0

  for i in 0..(input.size-1)
    for j in i..(input.size-1)
      if input[i] - input[j] < maxprice
        days[0] = i+1
        days[1] = j+1
        maxprice = input[i] - input[j]
      end
    end
  end
    
  puts "But on day #{days[0]} and sell on day #{days[1]} for a profit of: $#{-maxprice}"
end


input_array = [17,3,6,9,15,8,6,1,10]
stock_picker(input_array)