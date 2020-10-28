# 2.1 配列(Array)

# 配列はいくつかのオブジェクトを順序付きで格納したオブジェクトとして最も使われるコンテナ


# 2.1.1 配列を作る
names = ["nosuke", "nabe", "tabe"]

puts names

# 2.1.2 配列オブジェクト

# 2.1.3　配列からオブジェクトを取り出す
=begin
 配列に格納されたオブジェクトには位置を表す番号であるインデックスがつく
 
 配列の要素をを取り出すには
 配列名[インデックス]
 と記述
 
 配列のインデックスは1からではなく0から始まる
 上のnamesの場合
 print names[1]と書くとnabeが返ってくる
 0=nosuke 1=nabe 2=tabe
 ということ

=end

names = ["nosuke", "nabe", "tabe"]

puts names[0] #=> nosuke 

print "彼の渾名は", names[0], "です。\n"

# 2.1.4　配列にオブジェクトを格納する
=begin
 配列の要素の一つを別のオブジェクトと置き換えるには
 配列名[インデックス]　= 格納したいオブジェクト
 という構文を使う

=end

names[0] = "佐藤"

puts names[0] #=> 佐藤

names[3] = "健太"

print "彼の名前は", names[0], names[3], "です。\n"

# 2.1.5 配列の中身
=begin
 配列の中にはどんなオブジェクトも要素として格納できます。
 例えば、文字列ではなく数値での配列も可能です。
 また、一つの配列の中に複数種類のオブジェクトを格納することもできる
 時刻やファイルといったオブジェクトも配列の要素にすることができる。
=end

num = [1, 2, 3, 4, 5,6, 7, 8, 9, 0]
puts num[0]

mixed = [1, "花", 2, "風" ,3]
print mixed[1], mixed[3], "\n"
print mixed, "\n"

# 2.1.6 配列と大きさ
=begin
 配列の大きさを得るにはsizeメソッドを使う
 mixedを使用して確認すると 5 が出力される
 この様に配列の大きさが数値として返ってくる。
=end

puts mixed.size #=> 5

# 2.1.7 配列と繰り返し
=begin
 配列の要素を全て表示したい、配列の要素のうち、ある条件に当てはまる
 要素についてはxxメソッド、当てはまらない要素にはyyメソッドを適用したい
 といったときには配列の要素全てにアクセスする方法が必要
 eachメソッドを使用
 eachの使い方は、第1章で説明した通り
  配列.each do |変数|
    繰り返したい処理
  end
 do~end　で囲まれている部分　ブロックという
 そのため、eachの様なメソッドはブロック付きメソッドとも呼ばれる
  以下irb入出力結果
   irb(main):001:0> names = [1, 2, 3, 4, 5, "n"]
   => [1, 2, 3, 4, 5, "n"]
   irb(main):002:0> names.each do |n|
   irb(main):003:1* puts n
   irb(main):004:1> end
   1 ここから
   2
   3
   4
   5
   n ここまでputsメソッドの実行結果
   => [1, 2, 3, 4, 5, "n"] eachメソッドの戻り値
 |n|となっている部分の変数nには繰り返しの旅に配列namesの要素が代入される。
 1回目　n = 1 2回目 n = 2 　3回目 n = 3 ....
=end

# 2.2 ハッシュ
# ハッシュ(Hash)もよく使われるコンテナ 文字列やシンボルなどをキーにしてオブジェクトを格納できる


# 2.2.1 シンボルとは
=begin
 シンボル(symbol)
 文字列に似たオブジェクトでRubyがメソッドなどの名前を識別するためのラベルをオブジェクトにしたもの
 シンボルは先頭に:をつける
 sym = :foo
 sym2 = :"foo" 上と同じ意味

 シンボルと同様のことはたいてい文字列でも可能
 ハッシュのキーの様に単純に同じかどうかを比較する様な場合、
 文字列より効率が良いことの方が多いのでシンボルがよく使われる

=end


# 2.2.2 ハッシュを作る
=begin
 新しいハッシュの作り方は、配列の作り方に似ている
 配列と違うのは[]の代わりに{}で囲うこと
 また、ハッシュではオブジェクトを取り出すためのキーと
 そのキーと対応させるオブジェクトをキー=>オブジェクトという形式で指定する。
 キーにはシンボル、文字列には数値をつかうのが一般的です。


 song = {:title=>"Honey", :artist=>"L'Arc~en~Ciel"}
 person = {"名前"=>"hyde", "読み方"=>"ハイド"}
 mark = {11=>"Jack", 12=>"Queen", 13=>"King"}

 シンボルをキーにする場合はシンボル=>オブジェクトだけでなく、
 シンボル名:オブジェクトという短い書き方も可能
 
  ※person1とperson2 同じ意味
 person1 = {:name=>"佐藤", :furigana=>"さとう"}
 person2 = {name:"佐藤", furigana:"さとう"}
 
=end

# 2.2.3 ハッシュの操作
=begin
 ハッシュからオブジェクトを取り出したり、格納する方法も配列に似ている。
 ハッシュに格納されたオブジェクトを取り出すには
 　ハッシュ名[キー]
 オブジェクトを格納する場合は
 　ハッシュ名[キー] = 格納したいオブジェクト
 配列と違い、キーには数値以外も使用できるのが特徴

 以下irb実行例
   irb(main):001:0> address = {name:"高橋", furigana:"たかはし"}
   => {:name=>"高橋", :furigana=>"たかはし"}
   irb(main):002:0> address[:name]
   => "高橋"
   irb(main):003:0> address[:furigana]
   => "たかはし"
   irb(main):004:0> address[:tel] = "080-0000-0001"
   => "080-0000-0001"
   irb(main):005:0> address
   => {:name=>"高橋", :furigana=>"たかはし", :tel=>"080-0000-0001"}
   irb(main):006:0>
=end

# 2.2.4 ハッシュの繰り返し
=begin
 eachメソッドを使用し、ハッシュにキーと値を一ずつとりだし、全ての要素を処理できる
 配列の場合はインデックス順に要素を取り出したが、配列の場合はキーと値の組みを取り出すことになる
 ハッシュ用のeachは
 ハッシュ.each do |キーの変数、値の変数|
    繰り返した処理
 end
 と記述する.

 以下irb実行例
   => {:name=>"高橋", :furigana=>"たかはし"}
   irb(main):002:0> address = {name:"高橋", furigana:"たかはし"}
   irb(main):003:0> address.each do |key, value|
   irb(main):004:1* puts "#{key}:#{value}"
   irb(main):005:1> end
   name:高橋
   furigana:たかはし
   => {:name=>"高橋", :furigana=>"たかはし"}
=end

song = {:title=>"Honey", :artist=>"L'Arc~en~Ciel"}
person = {"名前"=>"hyde", "読み方"=>"ハイド"}
mark = {11=>"Jack", 12=>"Queen", 13=>"King"}

song.each do |key, value|
    puts "#{key}: #{value}"
end


# 2.3 正規表現
=begin
 Rubyでは文字列の処理をするときには正規表現(Rcegular Experession)という物がよく使われる
 正規表現を使うと
 ・文字列のパターンと一致
 ・パターンを使った文字列の切り出し
 などを手軽に行える
 正規表現は、PerlやPythonなどのスクリプト言語で培われてきた機能
 Rubyもその流れを受け継いで言語の組み込み機能として手軽に正規表現を扱える
 文字列処理はRubyの得意分野、それはこの正規表現のおかげでもある。
=end

# 2.3.1 パターンとマッチング
=begin
 〇〇という文字列を含んだ行を表示したい、aとbの間に書かれた文字列を抜き出したい
 といった様な特定の文字列のパターンに対する処理を行いたい場合、文字列のパターンに当てはまるか
 どうか調べることをマッチングといい、パターに当てはまることをマッチすると言います。
 この様な文字列のパターンをプログラミング言語で表現するために使われるのが正規表現。
 /cde/ = ~"abcdefg"
 ↑の場合、 ab cde fg のcdeがマッチする。

 正規表現オブジェクトを作るには
  /パターン/
 といった構文を使う
 
 例えばRubyという文字列にマッチする正規表現は
  /Ruby/
 となります。
 アルファベットと数字からなる文字列に一致するパターンを描く分にはそのままで問題なし
 正規表現と文字列のマッチングを行うには、=~演算子を使う。
 正規表現と文字列のマッチングを行うには、
 /パターン/ =~　マッチングしたい文字列
 と書く。

   irb(main):002:0>  /Ruby/ =~ "Enjoy Ruby everyday"
   => 6
   irb(main):003:0>
　
 英数字や漢字だけのパターンを使ったっ場合は、パターンの文字列を含んでいればマッチし、
 マッチングが成功したときは、マッチ部分の位置を返す。
 文字の位置はm配列のインデックスと同じ様に0から数える
 先頭の文字列の位置は0と表される。
 一方、マッチング失敗だとnilを返す。

  irb(main):001:0> /Ruby/ =~ "Enjoy Ruby everyday"
  => 6
  irb(main):002:0> /Ruby/ =~ "Ruby"
  => 0
  irb(main):003:0> /Ruby/ =~ "Enjoy Cheryy book everyday"
  => nil
  irb(main):004:0>

 正規表現の右側の/に続けてiと書いた場合、英字の代償を区別せずにマッチングを行う。

  irb(main):004:0> /Ruby/ =~ "ruby"
  => nil
  irb(main):005:0> /Ruby/i =~ "ruby"
  => 0
  irb(main):006:0> /Ruby/i =~ "RUBY"
  => 0
  irb(main):007:0> /Ruby/ =~ "RUBY"
  => nil
  irb(main):008:0> /Ruby/ =~ "rUBy"
  => nil
  irb(main):009:0>

 ※これ以外にも正規表現には様々な使い方がある。
=end

# おまけ
=begin
 nilとはオブジェクトが存在しないことを表す特別な値。
 正規表現によるマッチングの際にどこにもマッチしなかった事を表す場合の様に
 メソッドが意味のある値を返すことができないときにはnilが返されます。
 また、配列やハッシュからデータを取り出す場合にまだ存在していないインデックスやキーを指定すると
 nilが得られる。

 irb実行例
  irb(main):009:0> item = {name:"ブレンド", price:610}
  => {:name=>"ブレンド", :price=>610}
  irb(main):010:0> item["tax"]
  => nil
  irb(main):011:0>
 
 if分やwhile文は、条件判定するときにはfalseとnilを負の値として扱い、
 それ以外の全ての値を真として扱います。
 したがってtrueかfalseのどちらかを返すメソッドだけではなく何らかの値、
 もしくはnilを返すメソッドも条件として扱える。
 print_hayashi.rb参照

=end