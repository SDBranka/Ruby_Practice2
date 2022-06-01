def spamClusterization(rq, id, th)
 
  a=0
  b=0
  v=Array.new {Array.new}

 while a<rq.length
   rq[a].downcase!.gsub! /\W+/, ' ' 
   puts "-rq-"
   print rq
   a+=1
 end


end



requests= ["I need a new window.", 
 "I really, really want to replace my window!", 
 "Replace my window.", 
 "I want a new window.", 
 "I want a new carpet, I want a new carpet, I want a new carpet.", 
 "Replace my carpet"]
ids= [374, 2845, 83, 1848, 1837, 1500]
threshold= 0.5
spamClusterization(requests, ids, threshold)
   