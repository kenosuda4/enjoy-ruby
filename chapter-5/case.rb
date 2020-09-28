# ※1
tags = ["A", "IMG", "PRE"]
tags.each do |tagname|
    case tagname
    when "P", "A", "I", "B", "BLOCKQUOTE"
        puts "#{tagname} has a child."
    when "IMG", "BR"
        puts "#{tagname} has a no child."
    else
        puts "#{tagname} cannot be used."
    end
end

# ※1
tags = ["x", "IMG", "PRE"]
tags.each do |tagname|
    case tagname
    when "P", "A", "I", "B", "BLOCKQUOTE"
        puts "#{tagname} has a child."
    when "IMG", "BR"
        puts "#{tagname} has a no child."
    else
        puts "#{tagname} cannot be used."
    end
end

=begin
 tags 内のオブジェクトが値と一致した時、
 指定された処理を実行する。
 ※1は全文表示
 ※2は1行目の処理は実行されず、else以降に記述された文が表示される。
  実行結果
   ※1
   A has a child.
   IMG has a no child.
   PRE cannot be used.
   ※2
   x cannot be used.
   IMG has a no child.
   PRE cannot be used.
=end
