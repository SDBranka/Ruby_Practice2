def proCategorization(pr, pf)
  pfs=[]
  a=0
  b=0
 
  
  while a<pf.length
    while b<pf[a].length
      pfs.push(pf[a][b])
      b+=1
    end
    a+=1
    b=0
  end
  puts "-pfs-"
  print pfs
  pfs.sort! {|x, y| x <=> y}
  a=0
  while a<pfs.length
    if pfs[a]==pfs[a+1]
      pfs.delete_at(a)
    else
      a+=1
    end
  end
  puts "\n-pfs2-"
  print pfs
  
  a=0
  v=Array.new {Array.new} 
  n=[]
  m=[]
  p=[]
  while a<pfs.length
    puts "\n-pfs[a]-"
    print pfs[a]
    b=0
    n.push(pfs[a])
    puts "\n-n-"
    print n
    while b<pr.length
      c=0
      puts "\n-b-"
      puts b
      puts "pf[b].length"
      puts pf[b].length
      while c<pf[b].length
        puts "-c-"
        puts c
        if pf[b][c]==pfs[a]
          m.push(pr[b])
          puts "\n-m-"
          print m
        end
        c+=1
      end
      b+=1
    end
    p.push(n)
    p.push(m)
    v.push(p)
    m=[]
    n=[]
    p=[]
    a+=1
  end
  puts "\n-v-"
  print v
  
  return v
  
  
  
  puts "\n"
end

#pros= ["Jack", 
# "Leon", 
# "Maria"]
#preferences= [["Computer repair","Handyman","House cleaning"], 
# ["Computer lessons","Computer repair","Data recovery service"], 
# ["Computer lessons","House cleaning"]]
#
#print proCategorization(pros, preferences)
#puts 'Expected Output 1:
#[[["Computer lessons"],["Leon","Maria"]], 
# [["Computer repair"],["Jack","Leon"]], 
# [["Data recovery service"],["Leon"]], 
# [["Handyman"],["Jack"]], 
# [["House cleaning"],["Jack","Maria"]]]'

pros= ["First", 
 "Fourth", 
 "Second", 
 "Third"]
preferences= [["One","Three","Two"], 
 ["One","One three","One two"], 
 ["One two","One two three","Two"], 
 ["One","One three","One two","One two three","Three","Two"]]
print proCategorization(pros, preferences)
puts 'Expected Output 2:
[[["One"],["First","Fourth","Third"]], 
[["One three"],["Fourth","Third"]], 
[["One two"],["Fourth","Second","Third"]], 
[["One two three"],["Second","Third"]], 
[["Three"],["First","Third"]], 
[["Two"],["First","Second","Third"]]]'


[[["One"], ["First", "Fourth", "Third"]],
[["One three"], ["Fourth", "Third"]], 
[["One two"], ["Fourth", "Second", "Third"]],
[["One two three"], ["Second", "Third"]], 
  [["Three"], ["First", "Third"]], 
    [["Two"], ["First", "Second", "Third"]]][[["One"], ["First", "Fourth", "Third"]], [["One three"], ["Fourth", "Third"]], [["One two"], ["Fourth", "Second", "Third"]], [["One two three"], ["Second", "Third"]], [["Three"], ["First", "Third"]], [["Two"], ["First", "Second", "Third"]]]Expected Output 2:


#Thumbtack helps Professionals (Pros) grow their
#business by identifying new customers. Upon 
#registering on Thumbtack, a Pro specifies which
#categories of services they provide. To help
#match customer requests with qualified Pros,
#Thumbtack maintains a list of Pros grouped by 
#service categories.
#
#Given a list of pros and their category 
#preferences, return the list of Pros for each category.
#
#Example
#
#For pros = ["Jack", "Leon", "Maria"] and
#
#preferences = [["Computer repair", "Handyman", "House cleaning"],
#               ["Computer lessons", "Computer repair", "Data recovery service"],
#               ["Computer lessons", "House cleaning"]]
#
#the output should be
#
#proCategorization(pros, preferences) =
#[[["Computer lessons"], ["Leon", "Maria"]],
#[["Computer repair"], ["Jack", "Leon"]],
#[["Data recovery service"], ["Leon"]],
#[["Handyman"], ["Jack"]],
#[["House cleaning"], ["Jack", "Maria"]]]
#
#Input/Output
#
#    [time limit] 4000ms (rb)
#
#    [input] array.string pros
#
#    A sorted non-empty array of unique strings 
#    consisting of English letters.
#
#    Here and below we assume that strings are sorted 
#    lexicographically.
#
#    Guaranteed constraints:
#    1 ≤ pros.length ≤ 5,
#    3 ≤ pros[i].length ≤ 10.
#
#    [input] array.array.string preferences
#
#    Array of the same length as pros. For each
#    valid i preferences[i] is a sorted array of 
#    unique elements, representing the categories 
#    the ith Pro provides services in.
#
#    Guaranteed constraints:
#    1 ≤ preferences.length ≤ 5,
#    1 ≤ preferences[i].length ≤ 10,
#    3 ≤ preferences[i][j].length ≤ 25.
#
#    [output] array.array.array.string
#
#    Array of category descriptions sorted by category
#    names. Each category should be listed in the following
#    format: [[<category>], [<Pro1>, <Pro2>...]] where
#    <category> is a category name, and <Proi> is a Pro 
#    that provides services in it.
#
#    Each category present in preferences should be returned
#    (in the right order), and Pros in each subarray should
#    be sorted.
