# custom_lambda = lambda { |n| n > 1 ? n * custom_lambda.call(n-1) : 1}

# puts "Enter a number"
# n = gets.to_i
# puts custom_lambda.call(n) 


# Define a lambda to calculate the factorial of a number recursively
custom_lambda = lambda do |n|
    if n > 1
      n * custom_lambda.call(n - 1)
    else
      1
    end
  end
  
  n = 5
  
  puts custom_lambda.call(n)
  