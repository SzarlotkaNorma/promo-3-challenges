def sum_with_while(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure

  # min = 2 et max = 9 on veut calculer 2 + 3 + .. + 9 

  number = min 
  sum = 0 

  while number <= max
  	sum += number
  	number += 1
  end

  sum 

end

def sum_with_for(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
  #dont hesitate to use and add personal variables
  num = min 
  sum = 0

  for num in min..max
    	sum = num + sum
    	num = sum + 1
  end

  return sum 
end



def sum_recursive(min,max)
  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end



# alibaba

# on te demande un mot de passe
# tu reponds qqchose

# tant que le mot de passe n'est pas le bon
	# je te dis de rester dehors
	# on te demande un mot de passe
	# tu reponds qqchose











