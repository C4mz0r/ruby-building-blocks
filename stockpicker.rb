def stock_picker(days)	
	maximum_profit = 0;
	best_days_to_buy_and_sell = []
	for buy in 0..(days.length - 2)
		for sell in buy+1..days.length-1
			profit = days[sell]-days[buy]
			if profit > maximum_profit 
				maximum_profit = profit
				best_days_to_buy_and_sell.clear.push(buy).push(sell)
			end
		end
	end
	best_days_to_buy_and_sell
end

puts stock_picker([1,2,3]).to_s + " - should give profit of 2"
puts stock_picker([3,2,1]).to_s + " - should give profit of 0"
puts stock_picker([17,3,6,9,15,8,6,1,10]).to_s + " - should give profit of 12"
