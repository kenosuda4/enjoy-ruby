# 1から復習

# 配列
sports = ["boxing", "swimming", "baseball", "esports"]

puts sports

puts sports[0]
print "井上尚弥は", sports[0], "の3階級世界チャンピオンです \n"

org = ["WBAsuper", "WBA", "WBC", "WBO", "IBF"]

print "現在はバンタム級で", org[0], "・", org[4], "の王者 \n"


# 配列の大きさを得るには.sizeを使用

p org.size #=> 4 4つの要素があるから

p org[0].size # => 3 WBAsuper 8文字..


# 繰り返し

# each 下の場合、ブロッック変数nに配列orgの要素が順番に代入されて表示をくりかえす
org.each do |n|
    puts n
end

# シンボル 先頭に:をつける
sym = :foo
sym2 = :"foo" 
# 二つとも同じ意味

# ハッシュ 配列　[]で囲う ハッシュ {}で囲う

song1 = {:title=>"Honey", :artist=>"L'Arc~en~Ciel"}
person = {"名前"=>"hyde", "読み方"=>"ハイド"}
mark = {11=>"Jack", 12=>"Queen", 13=>"King"}

# シンボルをキーにする場合は省略できる　シンボル名:オブジェクト名
song2 = {title:"Honey", artist:"L'Arc~en~Ciel"}

puts song1

puts song2

# ハッシュに格納されたオブジェクトを取り出す
puts song1[:title]

# オブジェクトの格納(入れ替え)
song1[:title] = "XXX" #titleがhoneyからxxxに変更
song1[:year] = "2012" #シンボル year オブジェクト 2012 が新しく格納された

print song1[:title]," ", song1[:year], "\n"

# ハッシュの繰り返し ハッシュの中身がそれぞれ変数key:シンボル value:オブジェクトが格納され順に表示される

song1.each do |key, value|
    puts "#{key}: #{value}"
end

# 配列にハッシュを格納して.eachで繰り返す 配列自体が表示される 意味はなし
songs = [song1, song2]

songs.each do |n|
    puts n
end

# 正規表現

a = /Ruby/ =~ "Enjoy Ruby everyday"
puts a # 6が出力される 先頭から6番目の文字からRubyが始まる(先頭は0で数えられる)

a = /Ruby/ =~ "Enjoy PHP everyday"
puts a # nilが返される 該当する文字がないからマッチング失敗(ターミナル上には何も出ない)

# 正規表現の右側の/に続けてiと書いた場合、英字の代償を区別せずにマッチングを行う。
b = /Ruby/ =~ "ruby"
puts b # nilが出力
c = /Ruby/i =~ "ruby"
puts c # 0が出力
  