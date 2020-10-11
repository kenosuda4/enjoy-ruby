pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matches = 10
matches = 0
file = File.open(filename)
file.each_line do |line|
    if matches >= max_matches
        break
    end
    if pattern =~ line
        matches += 1
        puts line
    end
end
file.close

=begin
 simple_grep.rbに手を加え、マッチした行を10行しか表示しないプログラム
 マッチするたびに変数matchesに1を加算しmax_matchesになればeach_lineによる
 繰り返しを終了する
=end