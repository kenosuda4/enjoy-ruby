filename = ARGV[0]
file = File.open(filename) # ①
text = file.read # ②
print text # ③
file.close # ④

=begin
 1行目 filenameという変数にコマンドラインから受け取った引の値ARGV[0]を代入
 ① でfilenameに代入されたファイルを開く
 ② でreadメソッドを使用し、データを読み込みその結果をその結果を③のtextに代入
 ③ printで出力
 ④ closeメソッドでファイルを閉じる
=end

