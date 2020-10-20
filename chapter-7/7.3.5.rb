def area(x: 0, y: 0, z:0)
    xy = x * y
    yz = y * z
    zx = z * x
    (xy + yz + zx) * 2
end

p area(x: 2, y: 3, z: 4) # 52
p area(x: 4, y: 3, z: 2) # 52
p area(x: 2, z: 3) # 12 yを省略