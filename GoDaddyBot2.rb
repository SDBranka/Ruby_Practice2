
def domainForwarding(rd)
  idxa=rd.length-1 
  directs=Array.new {Array.new} 
  n=[]
        
  while idxa>=0
    idxb=idxa-1
   # puts "idxa: "+idxa.to_s
#    puts n.include?(rd[idxa][0])
    while idxb>=0
     # puts "idxb: "+idxb.to_s
      if rd[idxa][0]==rd[idxb][1] || rd[idxa][0]==rd[idxb][0] ||
      rd[idxa][1]==rd[idxb][0] || rd[idxa][1]==rd[idxb][1] 
        m=rd[idxa].pop
        n.push(m)
        m=rd[idxa].pop
        n.push(m)
#        print "-n-"
#        puts n
#        puts "-m-"
#        puts m
      end
      idxb-=1
    end
    idxa-=1
  end
# puts "rd length: " + rd.length.to_s
# puts "rd: " 
# print rd

 
# puts directs.length
# puts directs[0].length
 
 q=[]
 idxa=0
   while idxa<rd.length
       if n.include?(rd[idxa][0])||n.include?(rd[idxa][1])
#         rd[idxa][0]==directs[0][idxb]||rd[idxa][1]==directs[0][idxb]
         m=rd[idxa].pop
         n.push(m)
         m=rd[idxa].pop
         n.push(m)
#         puts "\nrd: " 
#         print rd
       end
     idxa+=1
  end
n.sort! {|x, y| x <=> y}
  puts "\n-n sorted-"
  print n
  idxa=0
  idxb=1
  while idxa<n.length
    while idxb<n.length
      if n[idxa]==n[idxb]
        n.delete_at(idxb)
      else
      idxb+=1
    end
  end
  idxa+=1
  idxb=idxa+1
end
directs.push(n)
 puts "\n-directs-"
 print directs
#  n.sort! {|x, y| x <=> y}
#  puts "\n-n sorted-"
#  print n
#  idxa=0
#  idxb=1
#  while idxa<ary.length
#    while idxb<ary.length
#      if ary[idxa]==ary[idxb]
#        ary.delete_at(idxb)
#      else
#      idxb+=1
#    end
#  end
#  idxa+=1
#  idxb=idxa+1
#end

  
  idxa=0
  p=[]
  c=1
  while idxa<rd.length
  idxb=idxa+1
    while idxb<rd.length
      if rd[idxa][0]==nil
        idxa+=1
        idxb+=1
      end
      if rd[idxa][0]!=rd[idxb][0] || rd[idxa][0]!=rd[idxb][1] || rd[idxa][1]!=rd[idxb][0] || rd[idxa][1]!=rd[idxb][1]
        m=rd[idxa].pop
        p.push(m)
        m=rd[idxa].pop
        p.push(m)
        p.sort! {|x, y| x <=> y}
        puts "\n-p sorted-"
        print p
        idxa=0
        idxb=1
        while idxa<p.length
          while idxb<p.length
            if p[idxa]==p[idxb]
              p.delete_at(idxb)
            else
              idxb+=1
            end
         end
         idxa+=1
         idxb=idxa+1
       end
       directs.push(p)
       puts "\n-directs last-"
       print directs
       #           puts directs.length
      end 
      idxb+=1
    end   
    idxa+=1
  end
#  n.sort! {|x, y| x <=> y}
#  puts "\n-n sorted-"
#  print n
#  idxa=0
#  idxb=1
#  while idxa<ary.length
#    while idxb<ary.length
#      if ary[idxa]==ary[idxb]
#        ary.delete_at(idxb)
#      else
#        idxb+=1
#      end
#    end
#    idxa+=1
#    idxb=idxa+1
#  end
  
  
  
  
  
  
  
  #  directs.sort! {|x, y| x <=> y}
#  puts "-directs-"
#  print directs
##  idxa=0
##  idxb=1
##  while idxa<ary.length
##    while idxb<ary.length
##      if ary[idxa]==ary[idxb]
##        ary.delete_at(idxb)
##      else
##        idxb+=1
##      end
##    end
##    idxa+=1
##    idxb=idxa+1
##  end
#  puts ary
 



#  
#  while idxa<rd.length
#    puts idxa.to_s + " idxa\n"
#    while idxb<rd.length
#      puts idxb.to_s + " idxb\n"
#      if rd[idxa][0]==rd[idxb][1] ||rd[idxa][0]==rd[idxb][0]||rd[idxa][1]==rd[idxb][0]||rd[idxa][1]==rd[idxb][1]
#
#        #         directs
#        #
#
#                ary.push rd[idxa][0]
#                ary.push rd[idxb][0]
#                ary.push rd[idxa][1]
#                ary.push rd[idxb][1]
#        #       rd.delete_at(idxa)
#        #        rd.delete_at(idxb)
#
#                
#                
##                
##       rd[idxa].delete_at(0)
##       rd[idxb].delete_at(0)
##       rd[idxa].delete_at(1)
##       rd[idxb].delete_at(1)
#
#               rd.delete_at([idxa][0])
#               rd.delete_at([idxb][0])
##               rd.delete_at([idxa][1])
##               rd.delete_at([idxb][1])
#        puts ary
#        puts " ary\n"
#            puts rd
#            puts " rd\n"
#      end
#      idxb+=1
#    end
#    idxa+=1
#    idxb=idxa+1
#  end
#  ary.sort! {|x, y| x <=> y}
#  puts ary
#  idxa=0
#  idxb=1
#  while idxa<ary.length
#    while idxb<ary.length
#      if ary[idxa]==ary[idxb]
#        ary.delete_at(idxb)
#      else
#        idxb+=1
#      end
#    end
#    idxa+=1
#    idxb=idxa+1
#  end
#  puts ary
  
  
  
  
  
  
#  idxa=0
#  ara=[]
#  while idxa<rd.length
#    idxb=0
#    while idxb<ary.length
#      if rd[idxa][0] != ary[idxb]||rd[idxa][1] != ary[idxb]
#        ara.push rd[idxa][0]
#        ara.push rd[idxa][1]
#      end
#      idxb+=1
#    end
#    idxa+=1
#  end
#  ara.sort! {|x, y| x <=> y}
#  puts ara
#  idxa=0
#  idxb=1
#  while idxa<ara.length
#   while idxb<ara.length 
#     if ara[idxa]==ara[idxb]
#       ara.delete_at(idxb)
#     else
#      idxb+=1
#     end      
#   end
#   idxa+=1
#   idxb=idxa+1  
# end
# puts ara
# v=ary.to_a
# x=ara.to_a
# 
# puts "v\n"
# puts v
#
# puts " x\n"
# puts x
# 
# return v, x
end


rd= [["c","a"], ["e","f"], ["d","a"], ["b","c"]]
puts domainForwarding(rd)

rd= [["a-b.c","a.c"], 
 ["aa-b.c","a-b.c"], 
 ["bb-b.c","a-b.c"], 
 ["cc-b.c","a-b.c"], 
 ["d-cc-b.c","bb-b.c"], 
 ["e-cc-b.c","bb-b.c"]]
puts domainForwarding(rd)
#
#-n sorted-
#["a-b.c", "a-b.c", "a-b.c", "a-b.c", "a.c", "aa-b.c", "bb-b.c", "bb-b.c", "bb-b.c", "cc-b.c", "d-cc-b.c", "e-cc-b.c"]
#-directs-
#[["a-b.c", "a.c", "aa-b.c", "bb-b.c", "cc-b.c", "d-cc-b.c", "e-cc-b.c"]]C:/Users/Sam/Desktop/Programming/eclipse-workspace/Practice/a.rb:97:in `domainForwarding': undefined method `[]' for nil:NilClass (NoMethodError)
##[["a-b.c","a.c","aa-b.c","bb-b.c","cc-b.c","d-cc-b.c","e-cc-b.c"]]
#  
#  




#def domainForwarding(rd)
# # rd= [["c","a"], ["e","f"], ["d","a"], ["b","c"]]
#  idxa=0 
#  idxb=1
#  c=0
#  ary=[]
#  directs=[]
#    
#  while idxa<rd.length
#    puts idxa.to_s + " idxa\n"
#    while idxb<rd.length
#      puts idxb.to_s + " idxb\n"
#      if rd[idxa][0]==rd[idxb][1] ||rd[idxa][0]==rd[idxb][0]||rd[idxa][1]==rd[idxb][0]||rd[idxa][1]==rd[idxb][1]         
#        ary.push rd[idxa][0]
#        ary.push rd[idxb][0]
#        ary.push rd[idxa][1]
#        ary.push rd[idxb][1]
#        rd.delete_at(idxa)
##        rd.delete_at([idxa][1])
##        rd.delete_at([idxb][0])
#        rd.delete_at(idxb)
#        puts ary 
#        puts " ary\n"
#    puts rd
#    puts " rd\n"
#      end
#      idxb+=1
#    end
#    idxa+=1
#    idxb=idxa+1
#  end 
#  ary.sort! {|x, y| x <=> y}
#  puts ary
#  idxa=0
#  idxb=1
#  while idxa<ary.length
#    while idxb<ary.length 
#      if ary[idxa]==ary[idxb]
#        ary.delete_at(idxb)
#      else
#       idxb+=1
#      end      
#    end
#    idxa+=1
#    idxb=idxa+1  
#  end
#  puts ary
#  
#  idxa=0
#  ara=[]
#  while idxa<rd.length
#    idxb=0
#    while idxb<ary.length
#      if rd[idxa][0] != ary[idxb]||rd[idxa][1] != ary[idxb]
#        ara.push rd[idxa][0]
#        ara.push rd[idxa][1]
#      end
#      idxb+=1
#    end
#    idxa+=1
#  end
#  ara.sort! {|x, y| x <=> y}
#  puts ara
#  idxa=0
#  idxb=1
#  while idxa<ara.length
#   while idxb<ara.length 
#     if ara[idxa]==ara[idxb]
#       ara.delete_at(idxb)
#     else
#      idxb+=1
#     end      
#   end
#   idxa+=1
#   idxb=idxa+1  
# end
# puts ara
# v=ary
# x=ara
# 
# puts "v\n"
# puts v
#
# puts " x\n"
# puts x
# 
# return v, x
end


rd= [["c","a"], ["e","f"], ["d","a"], ["b","c"]]
puts domainForwarding(rd)

=begin

def domainForwarding(rd)
  idxa=rd.length-1 
  directs=Array.new {Array.new} 
  n=[]
        
  while idxa>=0
    idxb=idxa-1
    while idxb>=0
      if rd[idxa][0]==rd[idxb][1]||rd[idxa][0]==rd[idxb][0]||rd[idxa][1]==rd[idxb][0]||rd[idxa][1]==rd[idxb][1] 
        m=rd[idxa].pop
        n.push(m)
        m=rd[idxa].pop
        n.push(m)
      end
      idxb-=1
    end
    idxa-=1
  end
  idxa=0
  while idxa<rd.length
    if n.include?(rd[idxa][0])||n.include?(rd[idxa][1])
      m=rd[idxa].pop
      n.push(m)
      m=rd[idxa].pop
      n.push(m)
    end
    idxa+=1
  end
  n.sort! {|x, y| x <=> y}
  idxa=0
  idxb=1
  while idxa<n.length
    while idxb<n.length
      if n[idxa]==n[idxb]
        n.delete_at(idxb)
      else
      idxb+=1
    end
  end
  idxa+=1
  idxb=idxa+1
end
directs.push(n)
idxa=0
p=[]
 while idxa<rd.length
   idxb=idxa+1
   while idxb<rd.length
     if rd[idxa][0]==nil
       idxa+=1
       idxb+=1
     end
     if rd[idxa][0]!=rd[idxb][0] || rd[idxa][0]!=rd[idxb][1] || rd[idxa][1]!=rd[idxb][0] || rd[idxa][1]!=rd[idxb][1]
        m=rd[idxa].pop
        p.push(m)
        m=rd[idxa].pop
        p.push(m)
        p.sort! {|x, y| x <=> y}
        idxa=0
        idxb=1
        while idxa<p.length
          while idxb<p.length
            if p[idxa]==p[idxb]
              p.delete_at(idxb)
            else
              idxb+=1
            end
         end
         idxa+=1
         idxb=idxa+1
       end
       directs.push(p)
      end 
      idxb+=1
    end   
    idxa+=1
  end
  return directs
end
=end



















#
#values = {" "=> "01", "a" => "21", "b"=>"22", "c" => "23", "d" => "31", "e"=>"32",
#  "f"=>"33", "g"=>"41", "h"=>"42", "i"=>"43", "j"=>"51", "k"=>"52", "l"=>"53",
#  "m"=>"61", "n"=>"62", "o"=>"63", "p"=>"71", "q"=>"72", "r"=>"73", "s"=>"74",
#  "t"=>"81", "u"=>"82", "v"=>"83", "w"=>"91", "x"=>"92", "y"=>"93", "z"=>"94"}
#
# i ≠ j redirects[i][0] ≠ redirects[j][0].


#rd= [["c","a"], ["e","f"], ["d","a"], ["b","c"]]
#puts domainForwarding(rd)

#Test 1
#Input:
#
#redirects= [["godaddy.net","godaddy.com"], 
# ["godaddy.org","godaddycares.com"], 
# ["godady.com","godaddy.com"], 
# ["godaddy.ne","godaddy.net"]]
#puts domainForwarding(redirects)
##
##
##puts "Expected Output:\n[["godaddy.com","godaddy.ne","godaddy.net","godady.com"], 
## ["godaddy.org","godaddycares.com"]]"
#
#
#redirects: [["a-b.c","a.c"], 
# ["aa-b.c","a-b.c"], 
# ["bb-b.c","a-b.c"], 
# ["cc-b.c","a-b.c"], 
# ["d-cc-b.c","bb-b.c"], 
# ["e-cc-b.c","bb-b.c"]]
#
#puts "Expected Output:\n[["a-b.c","a.c","aa-b.c","bb-b.c","cc-b.c","d-cc-b.c","e-cc-b.c"]]"
#
#
#Domain name forwarding lets GoDaddy domain owners automatically
#redirect their site visitors to a different site URL. Sometimes
#the visitors have to go through multiple redirects before ending
#up on the correct site. Using the DNS Manager, GoDaddy customers 
#can view redirects in a simple visual format. One handy feature
#is the ability to group the domains by the final website they
#redirect to. Your task is to implement this feature.
#
#For the given redirects list, organize its domains into groups
#where for a specific group each domain eventually redirects visitors to the same website.
#
#Example
#
#For
#
#redirects = [["godaddy.net", "godaddy.com"], 
#             ["godaddy.org", "godaddycares.com"], 
#             ["godady.com", "godaddy.com"],
#             ["godaddy.ne", "godaddy.net"]]
#
#the output should be
#
#domainForwarding(redirects) = [["godaddy.com", "godaddy.ne", "godaddy.net", "godady.com"], 
#                               ["godaddy.org", "godaddycares.com"]]
#
#In the first group, "godaddy.ne" redirects to "godaddy.net", which in turn redirects
#to "godaddy.com". "godady.com" redirects visitors to "godaddy.com" as well.
#In the second group, "godaddy.org" redirects visitors to "godaddycares.com".
#
#Note, that domains in each group are sorted lexicographically and groups
#themselves are sorted lexicographically by the domain they redirect to.
#So in the example, the first group goes before the second because
#"godaddy.com" is lexicographically smaller than "godaddycares.com".
#
#Input/Output
#
#    [time limit] 4000ms (rb)
#
#    [input] array.array.string redirects
#
#    Each of redirects[i] consists of two domains. The second element is 
#    the domain to which the first element redirects. Each domain is a string
#    that may consist of lowercase Latin letters, hyphens ('-') and full stops ('.').
#    It is guaranteed that domain redirects do not contain cycles, i.e. it 
#    is impossible to get back to the current site after any number of redirects. 
#    It is also guaranteed that each domain redirects to no more than one another
#    domain, i.e. for each i ≠ j redirects[i][0] ≠ redirects[j][0].
#
#    Guaranteed constraints:
#    1 ≤ redirects.length ≤ 15,
#    redirects[i].length == 2,
#    1 ≤ redirects[i][j].length ≤ 25.
#
#    [output] array.array.string
#
#    Return the array of domain groups, such that each domain from redirects belongs to one of the group,
#    and domains from one group redirect visitors to the same website. Arrange the domains 
#    in each group in lexicographical order, and sort the groups by the domains they 
#    redirect to (also lexicographically).



#while c<rd.length
#  while idxa<rd.length
#    while idxb<rd.length
#      if rd[idxa][0]==rd[idxb][1]||rd[idxa][0]==rd[idxb][0]||
#         rd[idxa][1]==rd[idxb][0]||rd[idxa][1]==rd[idxb][1]
##          ary(c).push rd[idxa][0] + rd[idxb][0] + rd[idxa][1] + rd[idxb][1]
#         
#        puts ary
#      end
#      idxb+=1
#    end
#    idxa+=1
#  end
#  c+=1
#end 

