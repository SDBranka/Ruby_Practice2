
def almostIncreasingSequence(sequence)
  idx1=0
  idx2=1
  idx3=2
  a=0
  while idx1<sequence.length-1
   while idx2<sequence.length
#     puts sequence[idx1], sequence[idx2]
#     puts "si1/si2\n"
     if sequence[idx1]>=sequence[idx2]
     #  if sequence[idx2]>=sequence[idx3]
         a=+1
        #  end  
      end
    idx2+=1
    end
    idx1+=1
    idx2=idx1+1
#    puts idx1
#    puts "idx1+ \n"
  end
 
  if a>0
    return false
  else
    return true
  end
end

sequence=[1, 3, 2, 1]
puts almostIncreasingSequence(sequence)
puts "almostIn\n"
sequence=[1, 3, 2]
puts almostIncreasingSequence(sequence)
puts "almostIn\n"
sequence= [1, 4, 10, 4, 2]
puts almostIncreasingSequence(sequence)
puts "almostIn\n"
sequence= [40, 50, 60, 10, 20, 30]
puts almostIncreasingSequence(sequence)
puts "almostIn\n"
sequence= [1, 4, 10, 4, 2]
puts almostIncreasingSequence(sequence)
puts "almostIn\n"
sequence= [40, 50, 60, 10, 20, 30]
puts almostIncreasingSequence(sequence)
puts "almostIn\n"




#For sequence = [1, 3, 2, 1], the output should be
#almostIncreasingSequence(sequence) = false;
#
#There is no one element in this array that can be removed in order to get a strictly increasing sequence.
#
#For sequence = [1, 3, 2], the output should be
#almostIncreasingSequence(sequence) = true.
#
#You can remove 3 from the array to get the strictly increasing sequence [1, 2]. 
#Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].



