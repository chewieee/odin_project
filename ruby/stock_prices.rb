#Basic Ruby - Building Blocks Project 2: Stock Prices

# Implement a method #stock_picker that takes in an array of stock
# prices, one for each hypothetical day. It should return a pair of
# days representing the best day to buy and the best day to sell.
# Days start at 0.

# Quick Tips
# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day
# or the highest day is the first day.

def stock_picker(stock_prices)
  buy_day = 0
  sell_day = 0
  max_profit = -1.0/0 # neg. infinity
  stock_prices.each_with_index do |buy, i|
    stock_prices[i+1..-1].each_with_index do |sell, j|
      if(sell - buy > max_profit)
        max_profit = sell - buy
        buy_day = i
        sell_day = j+i+1 # inner array indices start at i+1 of the original array
      end
      puts "If buying at #{buy}, on day #{i}, and selling at #{sell}, on day #{j+2}, profit = #{sell-buy}."
    end
  end
  puts "best buy day: #{buy_day} best sell day: #{sell_day} for a profit of #{max_profit}"
  puts "[#{buy_day}, #{sell_day}]"
end

puts "Enter stock prices, one for each hypothetical day, seperated by commas:"
user_prices = gets.chomp.split(',').map { |price| price.to_i }
puts stock_picker(user_prices)