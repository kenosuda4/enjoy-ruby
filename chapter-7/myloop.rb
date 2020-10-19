def myloop
    while true
        yield
    end
end

num = 1
myloop do
    puts "num is #{num}"
    puts if num > 10
    num *= 2
end

=begin
 yield はメソッドのよ鼻出しの際に与えられたメソッドを実行する。
 上のプログラムだとnumの値を1、2、4、810倍にしていき、10を超えると
 myloopメソッドを抜ける
=end