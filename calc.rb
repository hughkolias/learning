food = []


while not food.last == ''
	
	food.push gets.chomp

end
	food.pop

	i=0
	n = 1

	while i < food.length
		if n > food.length - 1
			i = i + 1
			
		elsif food[i]<food[i+n]
			n = n + 1
		else
			food.insert(food[i].to_i, food.delete(food[i+n]))
			n = 1
		end 
	end

puts food

a b z d 