a=int(input("enter one no."))
x=0
while x**3 < abs(a):
    x+=1
if x**3 != abs(a):
    print(str(a) +" is not cube p\n" + str(x) + "is cuberoot of " + str(x**3) + "nearby " )
else:
    if x<0:
        x = -x
    print(str(a)+ "afwer werw " +str(x))

