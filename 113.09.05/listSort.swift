//var student:[Int] = [51,57,75,33,11,22,80]
print("輸入學生人數：")
var student:String? = readLine()

print("輸入學生分數")
var studentScoreString:String?
studentScoreString = readLine()
var studentScoreStringBefore:String = studentScoreString!

let middle:[String.SubSequence]
middle = studentScoreStringBefore.split(separator:" ")

var intValue:[Int] = []

for i in middle {
    intValue.append(Int(i)!)
}

//排序
intValue.sort()
print("-----Answer-----")
print(student!)
print(intValue)

// 找最不幸
var keyIndex = 0
for index in 0..<intValue.count {
    if intValue[index] >= 60 {
        keyIndex = index
        break
    }
}
print("最幸運：\(intValue[keyIndex]),最不幸：\(intValue[keyIndex-1])")