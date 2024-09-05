//var student:[Int] = [51,57,75,33,11,22,80]
let q1 = "輸入學生人數："
var student:[String] = readLine()

let q2 = "輸入學生分數"
var score:[String]? = readLine()

for i in student {
    if String(score)! >= 60 {
    print("學生人數：\(student)")
    print("學生分數：\(score)")
    print("best case")
    } else {
        print("學生人數：\(student)")
        print("學生分數：\(score)")
        print("worst case")
    }
}
