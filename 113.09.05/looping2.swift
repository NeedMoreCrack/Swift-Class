var friendList:[String] = ["Jhon","Mary","Andy","Alex","Kelly","Ada","Leon"]

for i in friendList {
    print(i)
}


print("--------------------")

var total:Int = 0
for i in [1,2,3,4,5,6,7,8,9,10] {
    total += i
    print(total)
}

//範圍運算子2則："...","..<"(不包含終點)
/*
語法：
    起點...終點 ===> 可以得到一個從起點(含)到終點(含)的範圍
*/
total = 0
for i in 1...100 {
    total += i
}
print(total)

total = 0
for i in 1..<100 {
    total += i
}
print(total)
