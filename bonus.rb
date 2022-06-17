def count_words(words1, words2)
    
end


def appearsOnce(arr,target)
    numberOfAppearances = 0
   for element in arr do
    if element == target
        numberOfAppearances += 1
    end
   end
   
  if numberOfAppearances == 1
    return true
  else
    return false
  end
end

puts appearsOnce(["a","ab"] , "ab")

months = Hash[1=>"january","2"=>"february","3"=>"march"]
p months[4]


    