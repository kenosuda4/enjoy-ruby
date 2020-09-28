sum = 0
for i in 1..5
    sum = sum + i
end
puts sum

=begin
 これは1から5までの数の合計を求めるプログラム
 2行目から4行目でiの値の範囲が1から5までになるよう指定
 つまりiの値を1化r5まで変化させながらsum = sum + i
 が実行されている。
   sum = 0
   sum = sum + 1
   sum = sum + 2
   sum = sum + 3
   sum = sum + 4
   sum = sum + 5
   puts sum
   ↑これが実行されている
=end