puts "breakの場合"
i = 0
["perl", "python", "ruby", "scheam"] .each do |lang|
    i += 1
    if i == 3
        break
    end
    p [i, lang]
end
puts "nextの場合"
i = 0
["perl", "python", "ruby", "scheam"] .each do |lang|
    i += 1
    if i == 3
        next
    end
    p [i, lang]
end


=begin
 breakは繰り返し全体を中断
 上の場合iが、6行目のbreakが実行される。
 breakが実行されるとeachメソッドの繰り返しを抜けて10行目まで進むので、
 ruby,schameは表示されない
=end
