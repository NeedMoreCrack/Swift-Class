let x:Character = "A"

print(x.asciiValue!)

print("----------ASCII codes: A ~ Z----------")
var s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for i in s {
    print("\(i) 的ASCII碼是:\(i.asciiValue!)")
}

print("----------UInt8 to ASCII Character")

// Scalar ---> 純量(內值)
// UnicodeScalay(UInt8) ===> 他會將UInt8轉成可以變成Character的基礎量 Unicode.Scalar
// Swift規矩 :
// UnicodeScalay(...) 只是將UInt8轉成可以變成Chasacter"純量(內值)" ===> 叫 Uncode.Scalar
// 然後!再用Character的建構子,將Unicode.Scalar轉成Character

var z:UInt8 = 65
var middle:UnicodeScalar
middle = UnicodeScalar(z)
var c:Character
c = Character(middle)
print(c)

print("----------ASCII codes: A ~ Z----------")

for i:UInt8 in 65...90 {
    print(Character(UnicodeScalar(i)))
}
