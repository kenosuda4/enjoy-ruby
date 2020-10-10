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

 nextは繰り返し処理のなかでnext以降の処理を飛ばし、次の処理を行う
 上の場合、iが3の場合、16行目のnextが実行され、次のeachメソッドの繰り返しに進み、
 langにscheamが代入されi + 1が実行される
=end
