#def makeArrayConsecutive2(statues)
#   smallest=9999999999999999
#   largest=0
#   idx=0
#   perfect=[]   
#   while idx<statues.length
#      a=statues[idx]     
#      if a<smallest
#         
#         
#end


def makeArrayConsecutive2(statues)
  statues.sort! {|x, y| y <=> x}
# puts statues
  statues.reverse!
#  puts statues
#  puts "\n"
  idx1=0
  idx2=1
  count=0
  while idx2<statues.length
#    puts statues[idx2]
#    puts"sidx2\n"
#    puts statues[idx1]
#    puts "sidx1\n"
    count+=statues[idx2]-statues[idx1]-1
#    puts count
#    puts "count\n"
    idx1+=1
    idx2+=1
  end  
  return count       
end

statues = makeArrayConsecutive2 =[6, 2, 3, 8]
puts makeArrayConsecutive2(statues)
puts "\n"
statues = makeArrayConsecutive2 =[0,3]
puts makeArrayConsecutive2(statues)
puts "\n"




