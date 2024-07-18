

factorial = lambda {num: reduce(lambda x, y: x * y, range(1, num+1))}
puts factorial.call(5)