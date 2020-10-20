# ※1
def foo(*args)
    args
end

p foo(1, 2, 3)

# ※2
def math(arg, *args)
    [arg, args]
end

p math(1)
p math(1, 2, 3)


# ※3
def a(a, *b, c)
    [a, b, c]
end

p a(1, 2, 3, 4, 5)
p a(1, 2)