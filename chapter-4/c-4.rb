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