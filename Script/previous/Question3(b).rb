def duplicates(array)
    hash = {}
    b = array.uniq.select { |value| array.count(value) > 1 }
    c = array.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
    p "The repeated elements are #{b} and their frequencies are #{c}"
end


a = [1,1,2,2,3,4,5]

duplicates(a)
