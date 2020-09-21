$x = 0
x = 0

require_relative ="sub"

p $x #=> 1
p x #=> 0

=begin
 sub.rb　記述内容
 　$x = 1 # グローバル変数に代入
　　x = 1 # ローカル変数に代入
 出力結果 
 $ ruby scopetest.rb
 0
 0
=end