//迴圈 loop ===> 重複執行一段程式碼
//Swift 有兩類：1.for, 2.while

//for 迴圈
/*
    for 變數 in 範圍 {
        程式碼
    }

*/

// 範例
for var i:Int in [2,1,56,77] {
    print("hahaha")
}
// 上面寫法沒錯 但會得到一個warning 說x變數沒用到

print("----------演變1----------")

for var i in [2,1,56,77] {  // Int可省略 inderence他能預測x是int
    print("hahaha2")
}

print("----------演變2----------")

for i in [2,1,56,77] {  // var可省略 某代Swift開始可以省略
    print("hahaha3")
}

print("----------演變3----------")

for _ in [2,1,56,77] {  // 如何節省不用的變數 ===> "_" underline
    print("hahaha4")
}
