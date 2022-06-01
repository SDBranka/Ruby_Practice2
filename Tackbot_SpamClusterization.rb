def spamClusterization(rq, id, th)
 
  a=0
  b=0
  v=Array.new {Array.new}
  
  
  while a<rq.length 
    b=0
    rq[a].downcase!.gsub! /\W+/, ' '    #takes rq to lower case and removes non-alphanumerics
    m=rq[a].split                       #sets m to hold each sentence as an array of strings
    m.sort! {|x, y| x <=> y}
#    puts "\n-rq[a]"
#    puts m
    while b<m.length-1
       if m[b]==m[b+1]
         m.delete_at(b)
       else
         b+=1
       end
     end
#     puts"\n-m-"
#     puts m
     v.push(m)
     puts "\n-v-"
     print v
     a+=1
  end
   

#Jaccard Index =
#(the number in both sets) / (the number in either set) * 100
#
#A = {0,1,2,5,6}
#B = {0,2,3,4,5,7,9}
#
#Solution: J(A,B) = |A∩B| / |A∪B| = |{0,2,5}| /
#|{0,1,2,3,4,5,6,7,9}| = 3/9 = 0.33. 
  ib=0
  a=0
  x=Array.new {Array.new}
  while a<v.length-1
    b=a+1
    c=0
    while b<v.length
      ib=v[a]&v[b]
      puts "\n-ib-"
      print ib
    
      m=v[a]+v[b]   #gets denominator
#      puts "\n-m1-"
#      print m 
      m.sort! {|x, y| x <=> y}
#      puts "\n-m2-"
#      print m 
      while c<m.length-1   
        if m[c]==m[c+1]
          m.delete_at(c)
        else
          c+=1
        end
#        puts "\n-m3-"
#        print m
        puts "\n-ib.length"
        puts ib.length
        puts "-m.length"
        puts m.length
        
        
        ibl=ib.length.to_f
        ml=m.length.to_f
        ji=ibl/ml
        puts "\n-ji-"
        puts ji
        if ji<th
          y=[a]+[b]
          puts "\n-y-"
          print y
          x.push(y)
          puts "\n-x-"
          print x
          d=0
          while d<x.length-1   
            if x[d]==x[d+1]
              x.delete_at(d)
            else
              d+=1
            end
          end
        end
        b+=1
      end    
      a+=1
    end 
  end
#  puts "\n-test-"
#  x=v[0]+v[1]
#  puts "\n   -x-"
#  print x
#  y=v[0]&v[1]
#  puts "\n   -y-"
#  print y
#  
  
  
end
#-v-
#[["a", "i", "need", "new", "window"],
#["i", "my", "really", "replace", "to", "want", "window"],
#["my", "replace", "window"], 
#["a", "i", "new", "want", "window"], 
#["a", "carpet", "i", "new", "want"], 
#["carpet", "my", "replace"]]
#-m3-
#["a", "i", "my", "need", "new", "really", "replace", "to", "want", "window"]


requests= ["I need a new window.", 
 "I really, really want to replace my window!", 
 "Replace my window.", 
 "I want a new window.", 
 "I want a new carpet, I want a new carpet, I want a new carpet.", 
 "Replace my carpet"]
ids= [374, 2845, 83, 1848, 1837, 1500]
threshold= 0.5
spamClusterization(requests, ids, threshold)

#Thumbtack tries to identify spam coming from
#multiple user accounts by comparing job 
#request descriptions and identifying clusters 
#that have high similarity. Their data analysis
#engineers are testing out a new clusterization
#algorithm that uses the Jaccard index. As a 
#prospective team member, you've been asked to 
#implement this algorithm.
#
#You are given a list of requests and ids of the
#users who submitted them. Implement the following 
#algorithm to identify possible spammers:
#
#first, split each request into a set of words
#and convert them to lowercase. We formally define a 
#word as a substring consisting of English letters,
#such that characters to the left of the leftmost letter
#and to the right of the rightmost letter are not letters;
#
#next, calculate the Jaccard index of each pair of sets;
#Jaccard Index = (the number in both sets) / (the number in either set) * 100
#
#divide the sets into clusters so that:
#        each set belongs to some cluster;
#        if Jaccard index of two sets A and B is not less
#        than the given threshold (meaning they are too similar), 
#        they belong to the same cluster. Note that if A and B as
#        well as B and C satisfy this criteria, then A, B and C
#        belong to the same cluster;
#for each cluster that has
#more than one element, return the list of their author
#IDs in ascending order.
#
#Example
#
#For
#
#requests = ["I need a new window.",
#            "I really, really want to replace my window!",
#            "Replace my window.",
#            "I want a new window.",
#            "I want a new carpet, I want a new carpet, I want a new carpet.",
#            "Replace my carpet"]
#
#ids = [374, 2845, 83, 1848, 1837, 1500] and
#threshold = 0.5, the output should be
#spamClusterization(requests, ids, threshold) =
#[[83, 1500], [374, 1837, 1848]].
#
#The sets of words obtained after the first step are:
#
#    {"i", "need", "a", "new", "window"} - 5 elements;
#    {"i", "really", "want", "to", "replace", "my", "window"} - 7 elements;
#    {"replace", "my", "window"} - 3 elements;
#    {"i", "want", "a", "new", "window"} - 5 elements;
#    {"i", "want", "a", "new", "carpet"} - 5 elements (note that a set consists only of unique elements);
#    {"replace", "my", "carpet"} - 3 elements.
#
#Here's a table of Jaccard indices for each pair 
#of request (there are 6 requests in total):
#  1 2 3 4 5 6
#1 - 2/10 = 1/5  1/7   4/6 = 2/3 3/7 0/8 = 0
#2 1/5 - 3/7 3/9 = 1/3 2/10 = 1/5  2/8 = 1/4
#3 1/7 3/7 - 1/7 0/8 = 0 2/4 = 1/2
#4 4/6 3/9 1/7 - 4/6 = 2/3 0/8 = 0
#5 3/7 1/5 0 2/3 - 1/7
#6 0 1/4 1/2 0 1/7 -
#
#Since threshold = 0.5, there are two clusters
#with more than one element. The first one contains
#the third and the sixth requests, and the second
#one contains requests number one, four and five
#(since Jaccard index of the first and fourth requests
#and of the fourth and fifth requests is larger than
#threshold, they all belong to the same cluster).
#After sorting their author ids, we arrive at the answer.
#
#Input/Output
#
#    [time limit] 4000ms (rb)
#
#    [input] array.string requests
#
#    A non-empty list of requests. Each request is a
#    non-empty string consisting of English letters,
#      punctuation marks and whitespace characters.
#
#    Guaranteed constraints:
#    1 ≤ requests.length ≤ 10,
#    1 ≤ requests[i].length ≤ 65.
#
#    [input] array.integer ids
#
#    Array of unique elements of the same size as requests.
#
#    Guaranteed constraints:
#    1 ≤ ids.length ≤ 10,
#    1 ≤ ids[i] ≤ 3000.
#
#    [input] float threshold
#
#    Guaranteed constraints:
#    0.0 ≤ threshold ≤ 1.0.
#
#    [output] array.array.integer
#
#    Each element of the output should contain
#    ids of users whose requests ended up in the
#    same cluster sorted in ascending order. Output
#    array elements should be sorted by the smallest
#    ids they contain.
