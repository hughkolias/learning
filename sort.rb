
food = ['banana', 'pear', 'apple', 'celery']

i = 0 
index_to_compare = 1

while i < food.length
		if index_to_compare == food.length - 1
			i += 1
			index_to_compare = i + 1
		elsif food[i]<food[index_to_compare]
			index_to_compare = index_to_compare + 1
		else
			food_to_swap = food.delete(food[index_to_compare])
			food.insert(i, food_to_swap)
			index_to_compare = 1
		end 
	end

puts food