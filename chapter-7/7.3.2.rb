def volume(x, y, z)
    return x * y * z
end

p volume(2, 3, 4)
p volume(10, 20, 30)

def area(x, y, z)
    xy = x * y
    yz = y * z
    zx = z * xy
end

p area(2, 3, 4)     # 結果 24
p area(10, 20, 30)  #結果 6000

def max(a, b)
    if a > b
        a    
    else
         b
    end
end

p max(10, 5)