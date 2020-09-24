# 西暦からRubyの年齢を返す
ad = ARGV[0].to_i
age = ad - 1993
p age

# ここから勝手にif文
if ad <= 1993
    p "out"
else
    p age
end