import UIKit

var arr = [1,3,5,7,9]

arr[0] = 999
arr.append(11)
arr.count
arr.insert(1, at: 0)
arr.remove(at: 1)
arr.swapAt(0, arr.count-1)

for i in arr {
    print(i,terminator: " ")
}



var dictionaries = [
    "A":1,
    "B":2,
    "C":3,
]
//字典查詢
dictionaries["A"]

//新增字典
dictionaries["D"] = 4

//更改字典的內容
dictionaries["B"] = 6

//更新或插入字典
dictionaries.updateValue(555, forKey: "F")

//移除指定的字典
dictionaries.removeValue(forKey: "A")

dictionaries = [:]
print(dictionaries.count)

for i in dictionaries {
    print(i)
}

// switch
var com = "*"
switch com {
        case "+":
            print("加")
        case "-":
            print("減")
        case "*":
            print("乘")
        case "/":
            print("除")
        default:
            print("請選擇 + - * /")
}

//reversed() 反轉
let numArr = [75, 43, 103, 87, 12]
for i in (0...numArr.count-1).reversed() {
    print(i)
}

//每次迴圈+2  stride()
let numArr2 = [75, 43, 103, 87, 12]
for i in stride(from: 0, to: numArr2.count, by: 2) {
    print(i)
}

var optionalString: String? = "Hello"
//！驚嘆號等於強制解包
//print(optionalString!) //如果包裝為空時(nil)解包會出現錯誤
optionalString = nil
if optionalString != nil {
    print(optionalString!)
} else {
    print("optionalString為空")
}

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
//if let 安全解包 如果有值才被解包
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

var optionalName2: String? = "John Appleseed"
optionalName2 = "Andy"
var greeting2 = "Hello!"
if let name = optionalName {
    greeting2 = "Hello, \(name)"
    print(greeting)
} else {
    print("進入else")
}

//新語法 如果??左為nil 將使用右方的值
let nickname: String? = "Alex"
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)
//舊語法 a != nil ? a! : b
let nickname2: String? = "Alex"
let fullName2: String = "John Appleseed"
let informalGreeting2 = "Hi \(nickname2 != nil ? nickname2! :  fullName2)"
print(informalGreeting2)



//switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
//比較多個值
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
//x為常數 hasSuffix為判斷是否為指定結尾
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


//字典內放陣列
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
// 底線(_)表示忽略Key 只帶入值
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

//練習6 將_替換為常數名稱，並追蹤哪一種類的數字是最大的
largest = 0
var numMax:String = ""
for (num, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            numMax = num
        }
    }
}
print("最大數字:\(largest)出現在\(numMax)數列")


//while 迴圈
var n = 2
while n < 100 {
    n *= 2
}
print(n)

//repeat while 迴圈
var m = 2
repeat {
    m *= 2
} while m < 100
print(m)



//練習7 觀察兩種迴圈的結果
var o = 2
repeat {
    o *= 2
} while o < 0
print(o)

o = 2
while o < 0 {
    o *= 2
}
print(o)


//使用 ..< 建立一個索引陣列來執行迴圈
var total = 0
for i in 0..<4 {
    total += i
    print(total)
}


//函式 func , -> 表示回傳類型
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

//_ 表示可以省略變數
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")


//練習8 刪除day參數，增加一個參數在問候語中包含今天的特價午餐
//變數前方可以自訂引數標籤(todayLunch)
func lunch(_ person: String, todayLunch food: String) -> String {
    return "Hello \(person), today special food is \(food)."
}
print(lunch("Alex",todayLunch: "bread"))


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0


    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }


    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
//(min: Int, max: Int, sum: Int) .sum表示變數
print(statistics.sum)
//(min: Int, max: Int, sum: Int)  .2表示索引的位置
print(statistics.2)




//閉包練習
let closureTest1 = { 
    num1 in num1 * 2
}
//使用閉包 並傳入參數5
let result1 = closureTest1(5)
print(result1)





//巢狀函式 巢狀函數可以存取在外部函數中聲明的變數
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//函數是一流的類型。這意味著一個函數可以返回另一個函數作為其值
//函式的型別：參數列表的型別+回傳值的型別 可省略為(Int) -> Int
func makeIncrementer() -> ((Int) -> Int) {  //此函式回傳一個函式，其回傳函式的型別為 帶一個INT參數，回傳值為INT的函式
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
//呼叫外部函式，取得一個尚未執行的匿名函式，記錄此函式的變數或常數即為函式名稱
var increment = makeIncrementer()
//以常數名稱或變數名稱來執行函式
increment(7)

//
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
//第一種方法
hasAnyMatches(list: numbers, condition: lessThanTen)
/*
 閉包 至一段稍後可以呼叫的程式碼區塊，實際上是一種函式的特殊情況
 閉包 是沒有函式名稱的函式
*/

//第二種方法，呼叫外部函式：以匿名 閉包 傳入引入，以{}自行撰寫閉包的格式
hasAnyMatches(list: [20,19,7,12], condition: {
    //參數 回傳型別
    (number:Int) -> Bool
    in
    //實作
    return number < 10
})

//第三種方法 呼叫外部函式：以 尾隨閉包(trailing closure) 傳入引數（使用輔助編碼）
hasAnyMatches(list: [20,19,7,12]) {
    number in number < 10
}

//第四種方法 呼叫外部函式：以省略參數命名的閉包傳入引數（不建議）
hasAnyMatches(list: [20,19,7,12]) {
    return $0 < 10
}

//陣列的對應處理方法
//以方法三尾隨閉包傳入引數
let newArr =
    numbers.map {
        number in
        return 3 * number
    }

//以方法二
//傳入陣列的自訂處理邏輯
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

//猜測陣列的map之運作邏輯
func myMappingArray(numbers:[Int],map:(Int) -> String) -> [String] {
    //宣告處理過後將回傳的空陣列
    var newArray = [String]()
    //列出數字陣列
    for item in numbers {
        //以陣列元素來執行呼叫者傳入的函式(呼叫者自定的對應處理方法)，將每一個陣列元素依照傳入的處理邏輯運作
        newArray.append(map(item))
    }
    return newArray
}

//呼叫猜測的myMappingArray函式
let mappingResult =
    myMappingArray(numbers: numbers) {
        num in num
        return "數字num\(num * 3)"
    }

//練習9 重寫閉包以對所有奇數傳回零
// numbers = [20, 19, 7, 12]
let newArr2 =
    numbers.map {
        number in
        if number % 2 == 0 {
            return number
        } else {
            return 0
        }
    }
newArr2


//陣列的排序方法
//原numbers陣列[20,19,7,12]
//方法一 由小到大排序陣列
let sortedArray = numbers.sorted()
//方法二 由大到小排序陣列
let sortedArray2 = sortedArray.reversed()
for item in sortedArray2 {
    print("排序：\(item)")
}

//方法三 "<"由小到大排序，">"由大到小排序(省略閉包的參數命名)
let sortedNumbers = numbers.sorted {$0 < $1}
print(sortedNumbers)

//方法四 以自定義方法由大到小排序陣列
let sortedArray3 = numbers.sorted {
    num1,num2 in
    //回傳num1是否比num2大
    return num1 > num2
}
sortedArray3

//物件和類別(Objects and Classes)
/*
 使用class後跟類別名稱來建立類別
 類別中的屬性(property)宣告的編寫方式與常數或變數宣告相同
 方法和函式的宣告方式相同
*/
//使用class後跟類別名稱來建立類別
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
