def custom_map(array,&block)
    block.call(array)
end


even = lambda {|x| x +2 }
puts custom_map([1,2,3,4,5,1,1], &even)  



