def stock_picker(stock)
    buy = nil
    sell = nil
    profit = 0

    stock.each_with_index do |price, i|
        j = i + 1
        
        while j < stock.size
            difference = stock[j] - price

            if difference > profit
                profit = difference

                buy = price
                sell = stock[j]
            end

            j += 1
        end
    end

    return "Buy on day #{stock.index(buy)}; Sell on day #{stock.rindex(sell)}; Your profit will be $#{profit}!"
end

puts stock_picker([17,7,3,9,15,8,6,1,10])