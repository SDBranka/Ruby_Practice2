def creditCycle(month, day, year, cycleDay)

  if year%4==0 && !(year%100==0)||(year%400==0)
    leap=true
  else
    leap=false
  end

  case month.to_s
  when "1"
    days_month=31
    days_monthprev=31
    month_name="January"
    next_month="February"
  when "2"
    if leap==true
      days_month=29
    else
      days_month=28
    end
    days_monthprev=31
    month_name="February"
    next_month="March"
  when "3"
    days_month=31
    if leap==true
      days_monthprev=29
    else
      days_monthprev=28
    end
    month_name="March"
    next_month="April"
  when "4"
    days_month=30
    days_monthprev=31
    month_name="April"
    next_month="May"
  when "5"
    days_month=31
    days_monthprev=30
    month_name="May"
    next_month="June"
  when "6"
    days_month=30
    days_monthprev=31
    month_name="June"
    next_month="July"
  when "7"
    days_month=31
    days_monthprev=30
    month_name="July"
    next_month="August"
  when "8"
    days_month=31
    days_monthprev=31
    month_name="August"
    next_month="September"
  when "9"
    days_month=30
    days_monthprev=31
    month_name="September"
    next_month="October"
  when "10"
    days_month=31
    days_monthprev=30
    month_name="October"
    next_month="November"
  when "11"
    days_month=30
    days_monthprev=31
    month_name="November"
    next_month="December"
  when "12"
    days_month=31
    days_monthprev=30
    month_name="December"
    next_month="January"
  end

  days_in=0
  if day>cycleDay
    days_in=day-cycleDay
  else
    puts days_monthprev
    puts days_monthprev.to_i
    days_in=days_monthprev.to_i-cycleDay+day
#    idxa=cycleDay
#    while idxa.to_i < days_monthprev.to_i
#      days_in+=1
#      idxa+=1
#    end
#    days_in+=day
  end

  if cycleDay==days_month
    day_one=1
    month_a=month
  else
    day_one=cycleDay+1
    month_a=next_month
  end

  if cycleDay == 1||cycleDay==21||cycleDay==31
    cd_suff="st"
  elsif cycleDay==2||cycleDay==22
    cd_suff="nd"
  elsif cycleDay==3||cycleDay==23
    cd_suff="rd"
  else
    cd_suff="th"
  end

  if day == 1||day==21||day==31
    d_suff="st"
  elsif day==2||day==22
    d_suff="nd"
  elsif day==3||day==23
    d_suff="rd"
  else
    d_suff="th"
  end

  puts "For " + month_name + " " + day.to_s +  "," +
  " "  + year.to_s + " and a cycle date of the " +
  cycleDay.to_s + cd_suff + " of the month, \nBob is " +
  days_in.to_s + " days into the cycle. Day 1 is " +
  month_a + " " + day_one.to_s + ", so the " +
  day.to_s + d_suff + " \nis day " + days_in.to_s + ".\n"

  return days_in
end


#Winning code
#def creditCycle m, d, y, c
#    1 .+ (d+~c) .% 30 + 2066[m] - 8[m]    
#end

##creditCycle(8,26,2017,20)   #6
#puts creditCycle(8,31,2017,26)    
##5
#puts creditCycle(5,5,2018,20)       
##15
#puts creditCycle(12,25,2020,25)
##30
puts creditCycle(1,2,2030,15)
#18
#puts creditCycle(3,15,2012,22)
##22
#puts creditCycle(3,20,2000,28)
##21
#puts creditCycle(7,1,2047,15)
##16


#Bob is trying to keep track of his credit card balance, and he would like to know how 
#many days he is into the billing cycle in order to gauge his spending. Given the current
#date and the day of the month on which the billing cycle ends (the "cycle day"), calculate 
#the number of days he is into his credit cycle.
#
#Day 1 is the day of the month after the cycle day. The cycle day is the last day of the cycle.
#
#Example
#For month = 8, day = 26, year = 2017 and cycleDay = 20, 
#the output should be
#creditCycle(month, day, year, cycleDay) = 6.
#
#For August 26, 2017 and a cycle date of the 20th
#of the month, Bob is 6 days into the cycle. 
#Day 1 is August 21, so the 26th is day 6.
#
#Input/Output
#
#    [time limit] 4000ms (rb)
#
#    [input] integer month
#
#    The number of current month (1-based, so 1 stands for January, 2 for February and so on).
#
#    Guaranteed constraints:
#    1 ≤ month ≤ 12.
#
#    [input] integer day
#
#    The current day of the month. It's guaranteed that given day is valid for the current month and year.
#
#    Guaranteed constraints:
#    1 ≤ month ≤ 31.
#
#    [input] integer year
#
#    The current year.
#
#    Guaranteed constraints:
#    2000 ≤ year ≤ 2050.
#
#    [input] integer cycleDay
#
#    Day of the month the current credit cycle ends.
#
#    Guaranteed constraints:
#    1 ≤ cycleDay ≤ 28.
#
#    [output] integer
#
#    The number of days that have elapsed in the current cycle, including the current date.
