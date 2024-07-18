



def hash_Sort(hashes)
    hashes.sort_by{|key,value| key.length}.to_h
    
end

h = {"a"=>1, "cdf"=>3, "bdsadada"=>2, "e"=>4, "d"=>4,}
puts hash_Sort(h)



