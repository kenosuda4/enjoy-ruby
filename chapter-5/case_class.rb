array = ["a", 1, nil]
array.each do |item|
    case item 
    when String
        puts "item is String."
    when Numeric
        puts "item is Numeric."
    else
        puts "item is something"   
    end
end

=begin
 array　に格納されているオブジェクトをeach do itemに各値を格納し順に取り出す。
 オブジェクトのクラスで判断し、定められた処理を実行する。
 a は Stringなので1行目を実行
 1 はNumericなので2行目を実行
 nil はどちらにも該当しないのでelseが実行される。

  実行結果
   item is String.
   item is Numeric.
   item is something
=end
 