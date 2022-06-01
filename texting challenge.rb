#Made some real steps here, this was a real win here. Coding time 1.5 hours


def texting(s)
  values = {" "=> "01", "a" => "21", "b"=>"22", "c" => "23", "d" => "31", "e"=>"32",
    "f"=>"33", "g"=>"41", "h"=>"42", "i"=>"43", "j"=>"51", "k"=>"52", "l"=>"53",
    "m"=>"61", "n"=>"62", "o"=>"63", "p"=>"71", "q"=>"72", "r"=>"73", "s"=>"74",
    "t"=>"81", "u"=>"82", "v"=>"83", "w"=>"91", "x"=>"92", "y"=>"93", "z"=>"94"}
  ary=[]  
  idx=0

  while idx<s.length
    if s[idx]!=s[idx+1]
      ary.push(values[s[idx]])
#      print ary
#      puts "ary\n"
      idx+=1
    else
      idxc=1
      temp=values[s[idx]].to_i
      while s[idx]==s[idx+1]
        idxc+=1
        idx+=1
      end
      idxc*=100
      temp+=idxc
      ary.push(temp.to_s)
#      print ary
#      puts "ary\n"
      idx+=1
    end
  end
  num=ary.join
  return num
end


puts texting("aa")
puts texting("bkgrnd")


