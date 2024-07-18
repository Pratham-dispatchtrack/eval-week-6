def sorting_by_length(hash)
    sorted_array = hash.sort_by { |key, value| key.to_s.length }.flatten
    sorted_hash = Hash[*sorted_array]
    puts sorted_hash 
end

hash = {"a":1, "abc":2, "ab":3}
sorting_by_length(hash)




#method 2
def hash_Sort(hashes)
    hashes.sort_by{|key,value| key.length}.to_h
    
end

h = {"a"=>1, "cdf"=>3, "bdsadada"=>2, "e"=>4, "d"=>4,}
puts hash_Sort(h)
