# 1から復習 4章

# グローバル変数 プログラム中どこで使われても同じ変数として扱われる
$a = 12
p $a

# 定数 先頭大文字 もう一度同じ定数に代入すると警告
NEST = "EBARA"
p NEST
NEST = "nittai"
p NEST

# 多重代入
first, second, third = 1, 2, 3

p "#{first} #{second} #{third}"

# 変数の値の入れ替え
a, b = 1, 0
tmp = a
a = b
b = tmp
p [a, b]

# 配列の要素の取り出し 3行目 配列の要素を多重代入
ary = [1, 2, 3, 4]
p ary[0]
a, b, c, d = ary
p b

# 配列の先頭の要素だけを取り出す場合
x, = ary
p x
