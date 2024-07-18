def is_a_valid_email?(email)
    email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    
end
puts is_a_valid_email?("pratham@email.com" )? "Valid Email" : "Invalid Email"

