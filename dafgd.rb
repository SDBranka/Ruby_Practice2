








undefined method `[]' for nil:NilClass
  
  
  
  
  
  
  
  
  
def domainForwarding(rd)
  idxa=rd.length-1 
  directs=Array.new {Array.new} 
  n=[]
  while idxa>=0
    idxb=idxa-1
    while idxb>=0
      if rd[idxa][0]==rd[idxb][1] || rd[idxa][0]==rd[idxb][0] ||
         rd[idxa][1]==rd[idxb][0] || rd[idxa][1]==rd[idxb][1] 
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
end


rd= [["c","a"], ["e","f"], ["d","a"], ["b","c"]]
puts domainForwarding(rd)
