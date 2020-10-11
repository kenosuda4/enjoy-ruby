file = File.open(ARGV[0])
file.each_line do |line|
    next if /^\s*$/ =~ line #空白行
    next if /^#/ =~ line # ハッシュ記号で始まる行 
    puts line
end
file.close

# ^←これじゃなきゃダメ ˆ←これだとダメ
=begin
 開いたファイルのハッシュ(＃)で始まる行と
 空白行を読み飛ばす
 
 hello.rbを開くと

  puts "hello, world"
  puts "こんにちわ世界"
  puts "你好,世界"

 上のように空白行とコメントアウトした行が飛ばされ繰り返し出力される。
=end