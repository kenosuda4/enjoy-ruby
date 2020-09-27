# unlrssは条件が偽(false)の時に処理が実行される

a = 10
b = 20
unless a > b
    puts "aよりbはちいさい"
end

=begin
 unless文の条件　a > bが偽になるため
 putsメソッドが実行される
 unless文でもelseが使用できる
=end

a = 10
b = 9
unless a > b
    puts "aよりbはちいさい"
else
    puts "aはbよりちいさい"
end
