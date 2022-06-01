def domainType(domains)
  idx=0
  idxa=0
  ary=[]
  typea=[]

  # puts domains.length

  while idx<domains.length
    #puts domains[idx]+" domains[idx]\n"
    md=domains[idx].reverse!
    #puts md+" md\n"
    while md[idxa]!="."
      ary.unshift(md[idxa])
      #puts ary
      #puts " ary\n"
      idxa+=1
    end
    mdj=ary.join
    #puts mdj
    if  mdj=="org"
      type="organization"
    elsif mdj=="com"
      type="commercial"
    elsif mdj=="net"
      type="network"
    elsif mdj== "info"
      type="information"
    else
      type="error"
    end
    while idxa>=0
      ary.pop
      idxa-=1
    end
    #puts type + " type\n"
    typea.push(type)
    #puts typea
    idxa=0
    idx+=1
    #puts idx
  end
  #  puts typea +" typea2\n"
  return typea
end









#For domains = ["en.wiki.org", "codefights.com", "happy.net", "code.info"], the output should be
#domainType(domains) = ["organization", "commercial", "network", "information"].

domains= ["en.wiki.org", "codefights.com", "happy.net", "code.info"]
puts domainType(domains)
  
  
  
  
#GoDaddy makes a lot of different top-level domains available to its customers. A top-level domain is one that goes directly after the last dot ('.') in the domain name, for example .com in example.com. To help the users choose from available domains, GoDaddy is introducing a new feature that shows the type of the chosen top-level domain. You have to implement this feature.
#To begin with, you want to write a function that labels the domains as "commercial", "organization", "network" or "information" for .com, .org, .net or .info respectively.
#For the given list of domains return the list of their labels.
#
#Example
#
#For domains = ["en.wiki.org", "codefights.com", "happy.net", "code.info"], the output should be
#domainType(domains) = ["organization", "commercial", "network", "information"].
#
#Input/Output
#
#    [time limit] 4000ms (rb)
#
#    [input] array.string domains
#
#    A list of domains, where each domain contains at least one dot. It is guaranteed that each top-level domain of these domains belongs to one of the types described above.
#
#    Guaranteed constraints:
#    4 ≤ domains.length ≤ 25,
#    5 ≤ domains[i].length ≤ 20.
#
#    [output] array.string
#
#    The list of labels for the given domains.
