# 復習
# ブロック付きメソッドの呼び出し

5.times do |i|
    puts "#{i}回目"
end

=begin
 上の場合
 5 = オブジェクト(レシーバ)
 times = メソッド
 do ~ end = ブロック
 i = ブロック変数(ブロックパラメータ)
=end

# インスタンスメソッド オブジェクトをレシーバとするメソッド
p "1,1,2,3,5,8".split(",") 
p [0 ,1, 2, 3, 4].index(1)
p  10.to_s

# クラスメソッド レシーバがインスタンスではなくクラスそのものの場合に使うメソッド
=begin
Array.new 新しい配列を作る
File.open(ファイル名) 新しいファイルオブジェクトを作る
Time.now Timeメソッドを作る
File.rename(古いフィアル名, 新しいファイル名)
クラスメソッドの呼び出しには . か ::を使う
=end

# 関数的メソッド レシーバがないメソッド(実際にないわけではなく、省略されている)
print "good night\n" 
sleep(3)               # 処理を()ないの時間止める 秒
print "good moring\n"

# メソッドの定義

def go(country)
    puts "go to #{country}!"
end

go("japan")

# 引数の省略
def swim(event = "Fr")
    puts "S1は#{event}です"
end

swim()
swim("IM")


# メソッドの戻り値 メソッドの中でreturn文を使うことで戻り値を指定できる(省略可能)

def volume(x, y, z)
    return x * y * z
end

p volume(1,2,3)

def area(a, b, c)
    ab = a * b
    bc = b * c
    ca = c * a
    (ab + bc + ca) * 2
end

p area(2, 3 ,4)
p area(10, 30, 20)