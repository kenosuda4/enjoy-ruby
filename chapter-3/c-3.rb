# 1から復習 3章

# ARGV[] 配列オブジェクト コマンドラインからスクリプトの引数として与えられた文字列を要素として持つ。

# ruby c-3.rb 1st 2nd 3rd 4th (一つずつ区切って入力する)
puts "最初の引数:#{ARGV[0]}"    #最初の引数:1st
puts "2番目の引数:#{ARGV[1]}"   #2番目の引数:2nd
puts "3番目の引数:#{ARGV[2]}"   #3番目の引数:3rd


# 引数で取得したデータは文字列(string)なので計算に使用する場合は整数(integer)に変換
#上で入力された文字を数値に変換 (数字を含まない場合は0になる)
num0 = ARGV[0].to_i 
num1 = ARGV[1].to_i

puts "#{num0} + #{num1} = #{num0 + num1}"

# ファイルからテキストデータを読み込む
filename = ARGV[3] #filenameという変数にコマンドラインから受け取った引の値ARGV[3]を代入
file = File.open(filename) # filenameに代入されたファイルを開く
text = file.read # readメソッドを使用し、データを読み込みその結果をその結果を③のtextに代入
print text # printで出力
file.close # closeメソッドでファイルを閉じる

# 省略 ファイルを読み込むだけ
filename1 = ARGV[4] 
text = File.read (filename1)
print text

# さらに省略 変数なし
print File.read(ARGV[4])

# ファイルからデータを1行ずつ読み込む

filename = ARGV[4]
file = File.open(filename)
file.each_line do |line| # each_lineメソッド　ファイルの各行を処理するメソッド
    print line           # 1行ずつ表示
end
file.close               # ファイルを閉じる


=begin
 # ファイルの中から特定のパターンの行のみ出力する
 pattern = Regexp.new(ARGV[5]) 
 filename = ARGV[6]
 
 file = File.open(filename)
 file.each_line do |line|
     if pattern = ~line
         print line
     end
 end
 file.close
=end