require_relative "grep"

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
simple_grep(pattern, filename)

=begin
 1行目  require_relativeメソッドでライブラリ grep.rbを読み込む
 3行目  変数pattern にgrep.rbで正規表現でマッチングさせる文字列を代入する
 4行目　変数filename にgrep.rbで開く対象のファイル名の入力
 5行目　メソッドを呼び出す


 ライブラリgrep.rb で定義したメソッド simple_grep(pattern, filename) を使用し、
 変数pattern に代入した文字列を変数filename に代入されたファイル内の文字列オブジェクトから
 正規表現でマッチングした文字列オブジェクトのみを表示させる

 例
   $ ruby use_grep.rb Array NEWS-2.6.0
   [Array]
      * Added Array#union and Array#difference instance methods.  [Feature #14097]
      * Array#to_h now accepts a block that maps elements to new key/value pairs.  [Feature #15143]
      * Array#filter is a new alias for Array#select. [Feature #13784]
      * Array#filter! is a new alias for Array#select!. [Feature #13784]
=end