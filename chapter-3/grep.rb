def simple_grep(pattern, filename)
    file = File.open(filename)
    file.each_line do |line|
      if pattern =~line
        print line
      end
    end
    file.close
end

=begin
 1行目 simple_grep というメソッドを定義 (pattern, filename)はuse_grepで指定した変数を読み込んでいる？
 2行目 変数fileにFile.openメソッドで開いたファイルを代入 (filename)はuse_grep.rbでARGV[0]でコマンドラインから入力されたファイル名が変数filenameに代入されている
 3行目 each_lineメソッドで変数fileに代入されたファイルの文字列オブジェクトを1行ずつ読み込む
 4行目 if文で 変数pattternが正規表現で変数lineとマッチした場合を指定
 5行目 printメソッドでif文で指定した文字列オブジェクトを含む行を出力
 8行目 ファイルを閉じる
=end