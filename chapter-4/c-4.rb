# 1から復習 3章

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