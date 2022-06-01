

def almostIncreasingSequence(sequence)
  idxa=0
  idxb=1
  a=0
  
  if sequence[sequence.length-1]<=sequence[sequence.length-2]
    sequence.delete_at(sequence.length-1)
    a+=1
  end
  while idxa<sequence.length
    while idxb<sequence.length
#      puts sequence[idxa], sequence[idxb]
#      puts "seqia/seqib\n"
      if sequence[idxa]>=sequence[idxb]
          sequence.delete_at(idxa)
          a+=1
      else
        idxb+=1
      end
    end
    idxa+=1
    idxb=idxa+1
    
  end 
    
  if a>1
    return false
  else
    return true
  end
end





sequence=[1, 3, 2, 1]
puts almostIncreasingSequence(sequence)
puts "almostIn1 False\n"
sequence=[1, 3, 2]
puts almostIncreasingSequence(sequence)
puts "almostIn2 \n"
sequence= [1, 4, 10, 4, 2]
puts almostIncreasingSequence(sequence)
puts "almostIn3 \n"
sequence= [40, 50, 60, 10, 20, 30]
puts almostIncreasingSequence(sequence)
puts "almostIn4 \n"
sequence= [1, 4, 10, 4, 2]
puts almostIncreasingSequence(sequence)
puts "almostIn5 False\n"
sequence= [40, 50, 60, 10, 20, 30]
puts almostIncreasingSequence(sequence)
puts "almostIn6 \n"
sequence= [123, -17, -5, 1, 2, 3, 12, 43, 45]
puts almostIncreasingSequence(sequence)
puts "almostIn7 True\n"
sequence= [1, 2, 5, 5, 5]
puts almostIncreasingSequence(sequence)
puts "almostIn8 False\n"
sequence= [1, 2, 3, 4, 5, 3, 5, 6]
puts almostIncreasingSequence(sequence)
puts "almostIn9 False \n"
sequence= [1, 1, 1, 2, 3]
puts almostIncreasingSequence(sequence)
puts "almostIn10 False \n"
sequence= [10, 1, 2, 3, 4, 5]
puts almostIncreasingSequence(sequence)
puts "almostIn11 True\n"
sequence= [1, 2, 1, 2]
puts almostIncreasingSequence(sequence)
puts "almostIn12 False \n"
sequence= [1, 2, 5, 3, 5]
puts almostIncreasingSequence(sequence)
puts "almostIn13 True \n"
sequence= [3, 5, 67, 98, 3]
puts almostIncreasingSequence(sequence)
puts "almostIn14 True\n"