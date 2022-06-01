def shapeArea(n)
    area =2*n-1
    puts area
    puts"\n"
    n-=1
    while n>0
      area+=4*n-2
      n-=1
      puts area
      puts"\n"
    end
    return area
end


puts shapeArea(2)
