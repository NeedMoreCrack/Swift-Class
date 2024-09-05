var str:String = "11 52 73 14 95 16 37"
var str2 = str.split(separator: " ")
print(str2)
print("str2 tpye is :",type(of: str2))
var strArr:[String] = []
for i in str2 {
    strArr.append(String(i))
}
print("strArr tpye is :",type(of: strArr))
