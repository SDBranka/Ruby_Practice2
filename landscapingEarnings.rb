def landscapingEarnings(time)
  tree=[120,300]
  mow=[30,14]
  rake=[10,7]
  trim=[5,4]
  dig=[4,3]
  earns=[]
  tc=0
  mc=0
  rc=0
  trc=0
  dc=0 
  time=a 
    
    while a>tree[0]
      tc+=1
      a-=tree[0]
    end
    while a>mow[0] 
     mc+=1
     a-=mow[0]
    end
    while a>rake[0]
      rc+=1
      a-=rake[0]
    end
    while a>trim[0]
     trc+=1
     a-=trim[0]
    end     
    while a>dig[0]
      dc+=1
      a-=dig[0]
    end
  
end



#def landscapingEarnings t
#  r=0
#  q=11
#  q.times {|c| q.times {|d| q.times {|e| q.times {|f| q.times {|g| r=[r,300*c + 14*d + 7*e + 4*f + 3*g].max if g*4+f*5+e*10+d*30+c*120 == t && g+f+e+d+c < q}}}}}
#  r
#end


#tree_removal => {time: 120, money: 300},
#:mowing => {time: 30, money: 14},
#:raking => {time: 10, money: 7},
#:trimming => {time: 5, money: 4},
#:digging => {time: 4, money: 3}
#
#employees work1<x<10 jobs
#employees must work>4hrs




puts "\ntest 1   Expected Output:16"
time= 20
puts landscapingEarnings(time)
puts "\ntest 2   Expected Output:71"
time= 119
puts landscapingEarnings(time)
puts "\ntest 3   Expected Output:300"
time= 120
puts landscapingEarnings(time)
puts "\ntest 4   Expected Output:357"
time= 200
puts landscapingEarnings(time)
puts "\ntest 5   Expected Output:3000"
time= 1200
puts landscapingEarnings(time)
puts "\ntest 6   Expected Output:922"
time= 388
puts landscapingEarnings(time)
puts "\ntest 7  Expected Output:2421"
time= 1000
puts landscapingEarnings(time)





#You are making a system that will help your client, a landscaping company, assign their employees to projects in such a way that their earnings are maximized. The company offers a few different services, each of which take an employee a certain amount of time to complete.
#
#:tree_removal => {time: 120, money: 300},
#:mowing => {time: 30, money: 14},
#:raking => {time: 10, money: 7},
#:trimming => {time: 5, money: 4},
#:digging => {time: 4, money: 3}
#
#The company policy is that an employee must be scheduled for EXACTLY the amount of time they say they can work that month. The company wants to maximize the profits that they can make from a given employee in a month.
#
#Employees can work anywhere from 1 to 10 jobs a month, as long as the total amount of time is equal to the number of hours they put in for that month. An employee putting in more than 10 jobs a month is not allowed. An employee putting in fewer than 4 hours of work a month is also not allowed.
#
#Example
#For time = 20, the output should be
#landscapingEarnings(time) = 16.
#Here are the possible ways to assign jobs to this person:
#
#    raking {x2} => time = 20, money = 14;
#    raking, trimming, trimming => time = 20, money = 15;
#    trimming {x4} => time = 20, money = 16;
#    digging {x5} => time = 20, money = 15.
#
#So the most profitable assignment of jobs would be to have the employee do 4 trimmings, making 16 money for the company.
#
#Input/Output
#
#    [time limit] 4000ms (rb)
#
#    [input] integer time
#
#    The amount of time an employee can work in a month.
#
#    Guaranteed constraints:
#    4 ≤ time ≤ 1200.
#
#    [output] integer
#
#    The max amount of profit the company can make from a given employee in a month.
