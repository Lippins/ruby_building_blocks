def substrings(text, array)
    result = Hash.new
    array.each do |word| 
      if text.downcase.include?(word.downcase)
        result[word] = text.downcase.scan(word.downcase).count
      end
    end
    result
end
  
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
  