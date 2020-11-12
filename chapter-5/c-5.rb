# 1から復習 5章

# 条件判断

ad = ARGV[0].to_i
age = ad - 1993
puts age

# 条件と真偽値

# trueとfalse
p "".empty?     # true
p "aaa".empty?  # false

# 正規表現によるマッチング
p /Ruby/ =~ "Ruby" # true
p /Ruby/ =~ "Perl" # nil

# trueやnilを返すメソッドであれば条件判断に使える

# if文 条件がtrueの時に処理を実行 (条件の前に!をつけると逆になる)
# 理論演算子 && 両方みたす
x = ARGV[0]

if x > "1999" && x < "2021"
    puts "二十一世紀生まれ"
else
    puts "二十世紀生まれか未来人"
end

# 理論演算子 || どちらかを満たす

s = 0

if s % 2 == 0 || s == 0
    puts "偶数か0"
else
    puts "それ以外"
end

# if文 elsif
n = 33
if n % 2 == 0 && n == 0
    puts "偶数か0"
elsif n >= 30
    puts "30以上の奇数"
else
    puts "それ以外"
end

# unless文 条件がfalseの時に実行
a = 10
b = 11

unless a > b
    puts "aはbより大きくない"
end

unless a > b && a + b %% 2 == 0
    puts "aはbより大きくなく、足した数は奇数"
else
    puts "aはb大きくないかもしれない、そして偶数"
end

# case文 一つのオブジェクトの値によって条件を分ける時

tags = ["natu", "chori", "kazu","nosu","taka"]
tags.each do |tagname|
    case tagname
    when "natu", "I", "B"
        puts "#{tagname} のS1はbr."
    when "kazu", "chori", "nosu"
        puts "#{tagname} のS1はFr."
    else 
        puts "#{tagname} 泳げない."
    end
end

# case文でオブジェクトのクラスで表示内容を変える

times = [24.48, "DSQ", nil]
times.each do |time|
    case time
    when String
        puts "#{time}."
    when Numeric
        puts "#{time}"
    else 
        puts "標準記録を未突破"
    end
end

# if修飾子,unless修飾子
puts "aはbより大きい" if a > b
puts "aはbより小さい" unless a > b