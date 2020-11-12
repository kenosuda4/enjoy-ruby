# 復習

# 繰り返し

# timesメソッド
# iに繰り返された回数が代入される(0からスタート)

n = gets.to_i
n.times do |i|
    p "#{i}回目の繰り返し"
end


# for文

sum = 0
for i in 1..5
    sum = sum + i
end
puts sum

# 計算式の省略
sum = 0
for i in 1..5
    sum += i
end
puts sum

sum = 5
for i in 1..5
    sum -= i
end
puts sum

sum = 5
for i in 1..5
    sum *= i
end
puts sum

sum = 5
for i in 1..5
    sum /= i
end
puts sum

# 一般的なfor文

names = ["natu", "chori", "kazu", "nosu"]
for name in names
    puts name
end

# while文

# iが5になったら繰り返しから抜ける
i = 1
while i < 5
    puts i
    i += 1
end

sum = 0
i = 1
while i <= 5
    sum += i
    i += 1
end
puts sum

# until文
# whileの逆 (条件を満たすまで繰り返す)

sum = 0
i = 1
until sum >= 10
    sum += i
    i += 1
end
puts sum

# eachメソッド

swims = ["Fr", "Fly", "Br", "Ba"]
swims.each do |swim|
    p swim 
end

sum = 0
(1..5).each do |i|
    sum = sum + i
end
puts sum

# loopメソッド 省略(ctr + cで強制ストップ)

# 繰り返しの制御 break
i = 0
swims.each do |swim|
    i += 1
    if i == 3 # 3になったら繰り返しを止める
        break
    end
    p [i,swim]
end

# 繰り返しの制御 next
i = 0
swims.each do |swim|
    i += 1
    if i == 3 # 3のときだけ作業をすっ飛ばす
        next
    end
    p [i,swim]
end
