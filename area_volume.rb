x = 10
y = 20
z = 30
area = (x*y + y*z + z*x) *2
volume =x * y * z
print "表面積=", area, "\n" #=>2200
print "体積=", volume, "\n" #=> 6000
 
# 変数を用いない場合...
print "表面積=", (10*20 + 20*30 + 30*10) *2, "\n"
print "体積=",  10*20*30, "\n"
# となり、値を１つ変更する際に何箇所も修正が必要になる。