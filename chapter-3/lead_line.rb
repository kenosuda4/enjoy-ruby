filename = ARGV[0]
file = File.open(filename)
file.each_line do |line|
    print line
end
file.close

=begin
 1.2行目はread_text.rbなどと同じ
 3行目のeach_lineメソッドはファイルの各行をそれぞれ処理するメソッド
 (eachは配列の各要素をそれぞれ処理する物)
 今回の場合はファイルを1行ずつ読みこみ、その行の文字列lineをprintで出力
=end
