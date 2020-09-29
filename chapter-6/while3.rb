sum = 0
i = 1
while sum < 50
    sum += i
    i += 1
end
puts sum

=begin
 while2と違い、条件がiではなくsumになっている。
 sumが50より小さい間繰り返すという条件
 sumが50を超える時にiが幾つになっているかわからないの = for文は使いづらい
=end