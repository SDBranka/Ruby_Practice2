def checkPalindrome(inputString)
  inputString.reverse==inputString
  
end

puts checkPalindrome("abcde")
puts "\n"
puts checkPalindrome("abba")


#1. Write a program to print the string in reverse order.
#
#def rever(text)
# puts text.reverse
#end
#
#rever("Ravi")
#
#2. Write a program to find the string is palindrome or not ?
#
#def palindrome?(text)
#  if text.reverse == text
#    puts "The text #{text} is a palindrome"
#  else
#    puts "the text #{text} isn't a palindrome"
#  end
#end
#
#palindrome?("qwerewq")
#
#3. Write the program to get a Fibonacci series outputs ...
#
#def fibo(count)
#  i=0
#  j=1
#  puts i
#  puts j
#  count_now=0
#  while count_now < count-2
#   puts x= i+j
#   i=j
#   j=x
#   count_now+=1
#  end
#end
#
#fibo(10)
#
#4. Write a program  to find the Second biggest number from array.
#
#def second_biggest_number(collection)
#  puts collection.sort[-2]
#end
#
#second_biggest_number([5,3,4,56,34,23,76,99,56,32])
#
#5. Write a program to count the vowels in string..
#
#def count_vowels(text)
#   text.downcase!
#   puts text.count("a")+text.count("e")+text.count("i")+text.count("otext.count("u")
#end
#
#count_vowtext.count("ud
#
#count_vowels("Testing Vowels")
#
#6. Write a program to get a factorial value  of any number
#def fact(n)
# puts 1.upto(n).inject('*')
#end
#
#fact(4)