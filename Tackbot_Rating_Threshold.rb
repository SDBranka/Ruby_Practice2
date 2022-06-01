def ratingThreshold(th,r)
  
  a=0
  b=0
  sums=[]
  av=0
  v=[]
    
  #ratings= [[3,4], [3,3,3,4], [4]]
  while a<r.length
    t=0
    while b<r[a].length
      t+=r[a][b].to_f
      puts "\n-t-"
      puts t
      b+=1
    end
    av=t/b   
    puts "-av-"
    puts av
    sums.push(av)
    puts "-sums-"
    print sums
    a+=1
    b=0
  end
  
  a=0
  puts "\n-sums length-"
  puts sums.length
  while a<sums.length
    puts "\n-sums [a]-"
    puts sums[a]
    if sums[a]<th
      v.push(a)
      puts "-v-"
      print v
    end
    a+=1
  end 
  puts "-v final-" 
  print v
  puts "\n"
  return v
end
  
  
#  while b<r[a].length

#threshold=3.5
#ratings= [[3,4], [3,3,3,4], [4]]
#print ratingThreshold(threshold, ratings)
#puts "\nExpected Output: [1]\n"
# 
#threshold= 1.3
#ratings= [[1,1,2], [1,2,2], [1,4]] 
#puts ratingThreshold(threshold, ratings)
#puts "Expected Output[2]: []\n"
# 
#threshold=1.45
#ratings=[]
#puts ratingThreshold(threshold, ratings)
#puts "Expected Output[3]: []\n"
# 
#threshold= 1
#ratings= [[2,4,5,2,1,3,4], [3,4,5,5,5,3,2], [1,1,1,2,1,1]]
#puts ratingThreshold(threshold, ratings)
#puts "Expected Output[4]: []\n"
 
threshold= 5
ratings= [[2,4,5,2,1,3,4], [3,4,5,5,5,3,2], [1,1,1,2,1,1]]
puts ratingThreshold(threshold, ratings)
puts "Expected Output[5]: [0, 1, 2]\n"

#threshold= 3.8
#ratings=[[4,4,3,4,4], [2,4,3,3,2,2,1], [5,5,3], 
# [3]]
#puts ratingThreshold(threshold, ratings)
#puts "Expected Output: [0, 1, 2]\n"

 

#In Thumbtack, users are able to rate Pros based on
#their experience working with them. Each rating is
#an integer ranging from 1 to 5, and all ratings are
#averaged to produce a single number rating for any
#given Pro. Those Pros who have a rating lower than
#a specified threshold are manually reviewed by
#Thumbtack staff to ensure high quality of service.
#
#You're given a list of ratings for some Pros. Find
#out which Pros should be manually reviewed.
#
#Example
#
#For threshold = 3.5 and
#
#ratings = [[3, 4],
#           [3, 3, 3, 4],
#           [4]]
#
#the output should be ratingThreshold(threshold, ratings) = [1].
#
#Assume that we have 3 Pros that have received the following
#ratings: [3, 4], [3, 3, 3, 4] and [4]. Then And if
#threshold = 3.5 the answer is
#ratingThreshold(threshold, ratings) = [1]. The first Pro's
#rating is 3.5, the second one's is 3.25, and the last one's
#is 4, so only the second Pro should be reviewed manually
#(the output is their 0-based index).
#
#Input/Output
#
#    [time limit] 4000ms (rb)
#
#    [input] float threshold
#
#    A positive number not greater than 5. Those Pros
#    whose ratings are lower than threshold should be 
# manually reviewed.
#
#    Guaranteed constraints:
#    1 ≤ threshold ≤ 5.
#
#    [input] array.array.integer ratings
#
#    For each valid i, ratings[i] is a non-empty array
#    that represents the last ratings the ith Pro has received.
#
#    Guaranteed constraints:
#    0 ≤ ratings.length ≤ 5,
#    1 ≤ ratings[i].length ≤ 15,
#    1 ≤ ratings[i][j] ≤ 5.
#
#    [output] array.integer
#
#    0-based indices of the Pros that should be reviewed, sorted in ascending order.
