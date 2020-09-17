pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)
file.each_line do |line|
    if pattern =~line
        print line
    end
end
file.close

=begin
 引数 1行目　2行目
 1行目　１つ目の引数ARGV[0]を元に正規表現オブジェクトを作り、変数patternに代入 
 　　　　Regexp.new(str)という形で引数の文字列strから正規表現オブジェクトを作る
 2行目　２つ目の引数ARGV[1]をファイル目にに使う変数filenameに代入
 4行目　ファイルを開き、ファイルオブジェクトを作り、これを変数fileに代入
 5行目　each_lineで1行ずつ読み込み変数lineに代入
 6行目 if文でppatternの値である正規表現とマッチするか調べる(判定する)
 7行目 マッチした文字列を出力 else文がないのでマッチしなかった場合は何もなし
 10行目　ファイルを閉じる

    例
    $ ruby simple_grep.rb Array NEWS-2.6.0
    * Added Array#union and Array#difference instance methods.  [Feature #14097]
    * Array#to_h now accepts a block that maps elements to new key/value pairs.  [Feature #15143]
    * Array#filter is a new alias for Array#select. [Feature #13784]
    * Array#filter! is a new alias for Array#select!. [Feature #13784]

 NEWS-2.6.0内のArrayという文字列のある行のみ出力 
=end