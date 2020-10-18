def myloop
    while true
        yield
    end
end

num = 1
myloop do
    puts "num is #{num}"
    puts if num > 10
    num *= 2
end