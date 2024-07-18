def custom_map(array, &block)
    array.map { |element| block.call(element) }#each element is being called by the block
end
  
  function = lambda { |x| x + 2 }
  p custom_map([1, 2, 3, 4, 5, 1, 1], &function)

#way2
class Array
    def custom_map(&block)
        result = []
        to_ary.each do |x|
        result.append(yield(x))
        end
        result
    end
end
p [1, 2, 3].custom_map { |x| x + 1 }
p [1, 2, 3].custom_map { |x| x * 2 }
p [1, 2, 3].custom_map { |x| x ** 2 }