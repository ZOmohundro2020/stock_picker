def stock_picker(stock_array)
  results = [] # holds result of differences
  pairs = [] # holds pairs of numbers from original index

  stock_array.each_with_index do | num, index |
    # loop through each element in passed array
    
    for i in (index + 1)..stock_array.length - 1
      
      results.push stock_array[i] - num  
      pairs.push [num, stock_array[i]]
      
    end

  end

  best_pair = pairs[results.index(results.max)] #select the best pair by looking for largest difference

  final_answer = [] 


  #looks in orginal passed array to get index from best pair
  final_answer.push(stock_array.find_index(best_pair[0])) 
  final_answer.push(stock_array.find_index(best_pair[1]))


  p "highest profit is: #{results.max}"
  p "index of highest profit: #{results.index(results.max)}"
  p "best pair is: #{best_pair}"
  p "index from original array is #{final_answer}"
end

stock_picker([17,3,6,9,15,8,6,1,10])