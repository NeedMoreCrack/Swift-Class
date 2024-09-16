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
//類別和實體(Class and Instance)
/*
 使用class後跟類別名稱來建立類別
 類別中的屬性(property)宣告的編寫方式與常數或變數宣告相同
 方法和函式的宣告方式相同
 注意：
    類別的實體(instance)傳統上稱為物件(object)
    Swift成使語言在
    結構(structure)和類別(class)的功能比其他程式語言更接近，大部分使用的實體(instance)來描述型別的記憶
*/
//使用class後跟類別名稱來建立類別
class Shape {
    //當類別中所有屬性都有初始值時，類別會自動得到一個不帶參數的初始化方法
    var numberOfSides = 0  //形狀有幾邊（可讀可寫的屬性）
    let dimention = "3D"  //形狀的維度（唯獨屬性 read-only/get-only）
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    //練習10 使用let新增一個常數屬性，並新增另一個帶有參數的方法
    func shapWithHeight(height:Int) -> String {
        return "這是\(dimention)形狀，高度\(height)公分"
    }
}


//透過在類別名稱後面加上括號來建立類別的實體(instance)。使用點語法存取實體的屬性和方法。
var shape = Shape() //使用自動得到的不帶參數的初始化方法配置實體 //allocate(分派)記憶體空間，形成實體(instance) 即執行initializer(建構子/初始化方法)
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
shape.shapWithHeight(height: 30)

class NamedShape {
    //當有任一屬性沒有初始值時，類別就沒有自動賦予的初始化方法，初始化方法必須自定，且一定要為缺少初始值的屬性補值
    var numberOfSides: Int = 0  //形狀的邊數屬性
    var name: String  //形狀名稱屬性

    //init定義初始化方法，實作中必須為缺少初始值的屬性補值
    init(name: String) {
        //當屬性名稱與參數名稱時，屬性前方必須加上self(類似this)關鍵字配合點語法呼叫對應的屬性
        self.name = name
    }
    //自定一個不太參數的初始化方法
    init() {
        name = "未知形狀"
    }
    
    init(numberOfSides: Int,name: String) {
        self.numberOfSides = numberOfSides
        self.name = name
    }
    
    //反初始化方法(deinitializer)不帶參數，不需要參數列表的小括號，此方法會在實體釋放前自動被呼叫，不能自行呼叫
    deinit {
        //提供實體釋放前清理所使用外部資源的程式，例如：關閉已開啟的外部檔案
        //因為這此時實體還未真正釋放，可以在此存取屬性和方法
        print("\(name)被釋放")
    }
    
    func simpleDescription() -> String {
       return "A shape:\(name) with \(numberOfSides) sides."
    }
}

//使用命名形狀類別
var aShape:NamedShape? = NamedShape(name: "特殊形狀")
aShape?.numberOfSides
aShape?.numberOfSides = 10
aShape?.simpleDescription()

//重新配置時，會先釋放原來的實體(原來的未知形狀)
aShape = NamedShape(numberOfSides: 5, name: "五邊形")
aShape?.simpleDescription()

//主動清空包裝盒(清空選擇值)時，會釋放本身(五邊形被釋放)
aShape = nil

//bShape的型別為預先拆封的選擇值(implicitly upwrap)
var bShape:NamedShape! = NamedShape(name:"新形狀")
bShape.name
bShape.simpleDescription()

bShape = nil

//選擇性串連呼叫(Optional Chaining)
//無須拆封即可村子取選擇值的成員，串連呼叫的過程，在選擇值之處，必須出現問號
//宣告人類別
class Person {
    //居住屬性
    var residence: Residence?
}

//宣告居所類別
class Residence {
    //房間屬性
    var numberOfRooms = 1
}

//實體化john
let john = Person()
john.residence = Residence()
//以下此行會觸發執行階段錯誤，因為強制拆封了nil(residence)
//let roomCount = john.residence!.numberOfRooms

//選擇性串連的過程，只要有任一環節出現問號，最後串道的屬性或方法的回傳值，都會是選擇值，而且不管串連過程發生過幾次問號，最後的型別只會帶一個問號
//if let(選擇性綁定)
//選擇性串連，可以配合if let選擇性綁定語法自動拆封
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

//繼承()
/*
 子類別(subclass)是在類別名稱之後包含父類名稱，並用冒號分隔
 類別不需要繼承自任何標準的跟類別(root class)，因此可以根據需要包含或省略父類別
 子類別可以複寫父類別方法中的實作，並以關鍵字override做標記
*/
class Square:NamedShape {  //繼承自NameShape父類別
    var sideLength:Double  //單邊長度屬性
    /*
        指定為初始化方法有兩種：
        1.指定初始化方法：會為所有屬性準備初始值，指定初始化方法必須總是向上代理(總是向上呼叫到父類別的指定初始化方法)
        2.便利初始化方法：必須橫向代理(delegate cross)(便利初始化方法只能呼叫自己類別中的便利初始化方法or指定初始化方法)
        Swift對初始化方法之間的代理呼叫應遵守以下三個規則：
        規則一
        指定初始化方法必須直接呼叫父類別的指定初始化方法(不能父類別的便利初始化方法)
        
        規則二
        便利初始化方法必須呼叫同一類別中的另一個初始化方法
     
        規則三
        便利初始化方法最終必須呼叫指定的初始化方法
    */
    //宣告指定初始化方法：此方法會為所有屬性補上初始值，包含呼叫父類別的初始化方法
    init(sideLength:Double,name:String) {
        //Step1.先針對自己的屬性給予初始值
        self.sideLength = sideLength
        //Step2.呼叫父類別的初始化方法，為父類別繼承過來的屬性補上初始值
        super.init(name: name)  //至此呼叫只能呼叫父類別的指定初始化方(不能呼叫便利初始化方法)
        //Step3.當所有屬性都有初始值之後，記憶體即配置完成，才能進一步更改屬性的初始值(此步驟可省略)
        numberOfSides = 4
    }
    
    //便利初始化(convenience)
    convenience override init() {
        //橫向代理呼叫到自己的便利初始化方法
        self.init(sideLength: 5, name: "預設正方形")
    }
    
    
    //計算正方形面積的方法
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
var showArea = Square()
showArea.simpleDescription()

/*
 練習11 建立一個NameShape的子類別，名為Circle類別，該子類別以半徑(radius)和名稱(name)作為其初始化方法的參數
 在Circle類別上實作area()方法計算圓面積，和複寫simpleDescriptionDescriprion()方法，回傳與而行的資訊
 計算圓面積公式：π * 半徑平方
*/
class Circle:NamedShape {
    var radius:Double
    
    init(radius:Double,name:String) {
        self.radius = radius
        super.init(name:name)
        numberOfSides = 1
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "面積：\(String(format:"%.2f",area())),半徑：\(radius),面積：\(name)"
    }
}
var showCircle = Circle(radius: 6, name: "小圓")
showCircle.simpleDescription()

//儲存屬性&計算屬性(Stored Property & Computed Property)
class EquilateralTriangle:NamedShape {
    var sideLength:Double = 0.0
    
    init(sideLength:Double,name:String) {
        super.init(name: name)
        numberOfSides = 3
        self.sideLength = sideLength
    }
    //總長度(計算屬性)
    var perimeter:Double {  //計算屬性只能宣告為var，不能宣告為let，而且必須明確宣告型別
        //取值段
        get {
            return 3.0 * sideLength
        }
        //設值段 (預設以newValue常數接取設定值)
        set {
            //以總長度回算單邊長度
            sideLength = newValue / 3.0
            //計算屬性不能存值，存值只能存在儲存屬性
        }
    }
    
    /*
     練習11
     計算三角形面積使用海龍公式：a,b,c是三角形的三邊長度，s=(a+b+c)/2，計算s*(s-a)*(s-b)*(s-c)，將此值開根號sqrt()
    */
    //以唯獨計算屬性回傳三角形面積
    var triangleArea:Double {
        get {
            let s = self.perimeter / 2
            return sqrt(s*(s-self.sideLength)*(s-self.sideLength)*(s-self.sideLength))
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
//實體化EquilateralTriangle類別
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)  //運作取值段(get)
triangle.perimeter = 9.9  //運作設值段(set)
print(triangle.sideLength)


//----------補充 計算屬性的覆寫和存值----------
class Triangle:EquilateralTriangle {
    /*
     var numberOfSides:Int = 0
     var name:String
     var sideLength:Double = 0.0
     */
    /*
     計算屬性復寫的限制:
        1.計算屬性不能覆寫為儲存屬性
        2.可讀可寫的計算屬性不可以覆寫成唯讀計算屬性
    */
    //模擬 可讀可寫的覆寫
    override var perimeter:Double {
        get {
            return 3.33
        }
        set {
            //設定段不給實做，存值只能存在儲存屬性
        }
    }
    override var triangleArea: Double {
        get {
            let s = self.perimeter / 2
            return sqrt(s*(s-self.sideLength)*(s-self.sideLength)*(s-self.sideLength))
        }
        set {
            //設定段不給實做，所以設定新值時，不會運作
        }
    }
    var tempProperty = 0
    var computedProperty:Int {
        get {
            return tempProperty
        }
        set {
            //計算屬性本身不能存值，存值只能使用中介的"儲存屬性"
            tempProperty = newValue
        }
    }
}

let triangle2 = Triangle(sideLength: 20, name: "三角形")
triangle2.computedProperty

//----------列舉和結構(Enumerations and Structures)----------
//類別使用enum關鍵字建立列舉，與類別和所有其他命名型別一樣，列舉可以具有與其關聯的屬性和方法
//定義撲克牌的列舉
enum Rank: Int,CaseIterable {  //此列舉有對應Int型別的原始值(rawvalue)
    //當列舉帶原始值，會得到自動得到一個帶rawValue參數的可失敗初始化方法
    case ace = 1  //指定case起算值為1(預設是0)
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    //列舉不可使用儲存屬性，只能使用計算屬性
    var test:String {
        return ""
    }

    //列舉也可以定義方法：回傳撲克牌的數字
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    //定義型別方法(type method)，回傳一整副撲克牌
    static func fullDeckOfCardV2() -> [Card] {
        var cards = [Card]()
        //跑牌數
        for rank in Rank.allCases {
            //跑花色
            for suit in Suit.allCases {
                //以Card結構的方法來準備單張撲克牌
                let card = Card(rank: rank, suit: suit)
                cards.append(card)
            }
        }
        return cards
    }
}
//產生列舉實體 方法一 以列舉的型別點出各別的case
let ace = Rank.ace
let aceRawValue = ace.rawValue

//產生列舉實體 方法二 使用帶rawValue參數的初始化方法
var aRank = Rank(rawValue: 5)

// 列舉的可失敗初始化方法
enum TemperatureUnit {
    case kelvin, celsius, fahrenheit
    //因為列舉不帶原始值，無法得到
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}

//以選擇性綁定來接取
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

//練習12 撰寫一個函式，藉由比較兩個Rank的原始值來比較他們的大小
func compare(rank1:Rank,rank2:Rank) -> String {
    if rank1.rawValue > rank2.rawValue {
        return "\(rank1)比\(rank2)大"
    } else if rank1.rawValue < rank2.rawValue {
        return "\(rank1)比\(rank2)小"
    } else {
        return "\(rank1)和\(rank2)一樣大"
    }
}

compare(rank1: .eight, rank2: Rank(rawValue: 13)!)
compare(rank1: .eight, rank2: .five)
compare(rank1: .eight, rank2: Rank(rawValue: 8)!)

//不帶原始值的列舉
enum CompassPoint1 {
    case north
    case south
    case east
    case west
}

//產生列舉實體 方法一 以列舉的型別點出各別的case(沒有 方法2 的初始化函式可以使用)
let aDirction = CompassPoint1.north

//帶原始值的列舉
enum CompassPoint2:String {  //代String的原始值，預設以case的名稱為原始值
    case north
    case south
    case east
    case west
}

//產生列舉實體 方法一
var bDirction:CompassPoint2? = CompassPoint2.east
bDirction?.rawValue
bDirction = CompassPoint2(rawValue: "south")
bDirction?.rawValue

//定義撲克牌的花色的列舉
enum Suit: CaseIterable {
       //黑桃     紅心     方塊       梅花
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "♠️"
        case .hearts:
            return "♥️"
        case .diamonds:
            return "♦️"
        case .clubs:
            return "♣️"
        }
        //當case已經列舉完所有狀況實，不需要default
    }

    //練習13 添加一個color()方法，為黑桃和梅花回傳"黑色"，為紅心和方塊回傳為"紅色"
    func color() -> String {
        switch self {
            case .hearts, .diamonds:
                return "紅色"
            case .spades, .clubs:
                return "黑色"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

//列舉的關聯值(Associated Values)
//定義條碼的列舉
enum Barcode {
    case upc(Int, Int, Int, Int)    //一維條碼：1碼+5碼+5碼+1碼檢查碼
    case qrCode(String)             //二維條碼：最多到2953個字元
}

//產生一維條碼的實體
var productBarcode = Barcode.upc(8, 85909, 51226, 3)

//產生二維條碼的實體
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

//定義伺服器回應的列舉
enum ServerResponse {
    case result(String, String)     //回應日出和日落時間
    case failure(String)            //回應錯誤訊息
    case tide(String,String)        //回應漲潮(rining)和退潮(ebb)
    
    func simpleDesctipttion() -> String {
        switch self {
            case let .result(sunrise, sunset):
                return "Sunrise is at \(sunrise) and sunset is at \(sunset)."
            case let .failure(message):
                return "Failure...  \(message)"
            case let .tide(rining,ebb):
                return "漲潮\(rining)，退潮\(ebb)"
        }
    }
}

//產生列舉實體即其對應的關聯值
let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
success.simpleDesctipttion()
failure.simpleDesctipttion()

//原範例
//switch success {
//    case let .result(sunrise, sunset):
//        print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
//    case let .failure(message):
//        print("Failure...  \(message)")
//    case let .tide(rining,ebb):
//        print("\(rining) ， \(ebb)")
//}
//
//switch failure {
//    case let .result(sunrise, sunset):
//        print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
//    case let .failure(message):
//        print("Failure...  \(message)")
//    case let .tide(rining,ebb):
//        print("\(rining) ， \(ebb)")
//}

//練習14 在SserverResponse中加入第三個case
let tide = ServerResponse.tide("6:30am", "7:00pm")
tide.simpleDesctipttion()
//switch failure {
//    case let .result(sunrise, sunset):
//        print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
//    case let .failure(message):
//        print("Failure...  \(message)")
//    case let .tide(rining,ebb):
//        print("\(rining) ， \(ebb)")
//}

//列出列舉的所有case(Iterating over Enumeration Cases)
//定義飲料列舉，以冒號引入CaseIterable協定，列舉型別會自動得到一個allCases屬性
enum Beverage: CaseIterable {
    case coffee, tea, juice
}

//allCases屬性可以取得列舉中所有case的陣列(此數性為"型別屬性" Type property)
Beverage.allCases

//取得case陣列的個數
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

//for-in 迴圈列出列舉的所有case
for beverage in Beverage.allCases {
    print(beverage)
}

for (index,value) in Beverage.allCases.enumerated() {
    print("Case index:\(index),value:\(value)")
}

//----------結構(Structure)----------
//使用struct關鍵字建立結構。結構支持許多與類別相同的行為，包括方法和初始值設定項。結構和類別之間最重要的區別之一是結構在程式碼中傳遞時總是被複製，但類別是透過引用傳遞的
//定義撲克牌結構
struct Card {
    //宣告牌數結構成員
    var rank: Rank
    //宣告花色結構成員
    var suit: Suit
    //結構 "一定會自動得到一個逐一成員的初始化方法"(member-wise initializer)
    //列印單張撲克牌資訊的方法
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription())\(suit.simpleDescription())"
    }
}
//實體化card結構。使用"逐一成員的初始化方法"
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

//練習14 寫一個函式，回傳一個包含整副撲克牌的陣列，其中每個牌數和花色的組合都是一張牌
//定義型別方法(type method)，回傳一整副撲克牌
func fullDeckOfCardV1() -> [Card] {
    var cards = [Card]()
    //跑牌數
    for rank in Rank.allCases {
        //跑花色
        for suit in Suit.allCases {
            //以Card結構的方法來準備單張撲克牌
            let card = Card(rank: rank, suit: suit)
            cards.append(card)
        }
    }
    return cards
}

let deck = fullDeckOfCardV1()
for card in deck {
    print(card.simpleDescription())
}

//---------------補充 惰性儲存屬性(Lazy Stored Properties)---------------
//定義資料匯入類別：開檔案，存檔案
class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a nontrivial amount of time to initialize.
    */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}


class DataManager {
    //墮性儲存屬性：此屬性值是在DataManager類別實體初始化完成之後才會準備，且其值只有在第一次呼叫此屬性才會準備，因為準備此屬性值會較耗用資源
    lazy var importer = DataImporter()
    //寫入外部檔案之前的陣列
    var data: [String] = []
    // the DataManager class would provide data management functionality here
    //資料管理員類別在此處才第一次使用，Importer惰性儲存屬性才會被初始化
}

//測試
let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")

print(manager.importer.filename)
// the DataManager class would provide data management functionality here
//資料管理員類別在此處才第一次使用，Importer惰性儲存屬性才會被初始化

//----------型別屬性(Type Properties) vs 實體屬性(Instance Propertier)----------
struct SomeStructure {
    //定義結構成員(其性質為實體屬性)
    var a:Int
    var b:String
    //以static關鍵字定義型別的儲存屬性和計算屬性
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
    func someInstanceMethod() {
        print("這是父類別的someInstanceMethod")
    }
    //以static關鍵字定義型別方法
    static func someTypeMethod() {
        print("這是父類別的someTypeMethod")
    }
}

let someStructure = SomeStructure(a:2,b:"test")
//結構與類別不同，在傳遞的過程是複製一份，所以本身為常數時，連結構成員也不能變動
//someStructure.a = 3
//Errot:Cannot assign to property: 'someStructure' is a 'let' constant

//呼叫實體屬性
someStructure.a
someStructure.b
//呼叫型別屬性
SomeStructure.storedTypeProperty
SomeStructure.computedTypeProperty
//呼叫實體方法
someStructure.someInstanceMethod()
//呼叫型別方法
SomeStructure.someTypeMethod()

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}


class SomeClass {
    //定義結構成員(其性質為實體屬性)
    var a:Int = 0
    var b:String = ""
    //以static關鍵字定義型別的儲存屬性和計算屬性
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    //以class關鍵字定義型別的計算屬性(class不可用於儲存屬性)
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
    //Error:Class stored properties not supported in classes; did you mean 'static'?
    //class var test = 0
    //定義型別方法
    func someInstanceMethod() {
        print("這是父類別的someTypeMethod")
    }
    //以class關鍵字定義可複寫的型別方法
    class func someTypeMethod() {
        print("這是父類別的someTypeMethod")
    }
    //以static關鍵字定義不可覆寫型別方法，只能繼承
    static func someImmutableTypeMethod() {
        print("這是父類別的someImmutableTypeMethod")
    }
}

class SomeSubClass:SomeClass {
    //子類別自己的儲存屬性
    var myProperty = 123
    //覆寫父類別的型別計算屬性
    override class var overrideableComputedTypeProperty: Int {
        return 999
    }
    //覆寫父類別的實體方法
    override func someInstanceMethod() {
        print("這是子類別的someInstanceMethod")
    }
    //覆寫父類別的型別方法(可以用class或static覆寫，已決定是否繼續被其子類別覆寫)
    class override func someTypeMethod() {
        print("這是子類別的someTypeMethod")
    }
    //Error:Cannot override static method
//    static func someImmutableTypeMethod() {
//        
//    }
}

/*
-----補充 比較列舉 結構和類別-----
Swift中的列舉 結構和類別有很多共同點 兩者都可以：

    1.定義屬性來儲存值(property)
    2.定義提供功能的方法(method)
    3.定義標著(subscription)已使用標著語法提共對其值的存取
    4.定義初始化方法以設定其初始狀態
    5.進行擴展以將其功能擴展到預設實作之外(為別人的實作衍伸額外功能)
    6.遵守協議已提供某種型別的標準功能
*/

/*
類別具有列舉和結構所沒有的附加功能：
 1.繼承讓一個類別能夠繼承另一個類別的特性
 2.型別轉換(type casting)使您能夠在運行時檢查記憶體中(check)和解釋(interpret)記憶體中類別實體的型別
 3.反初始化方法(deinitializer)讓類別的實體能夠釋放他以占用的任何資源
 4.引用技術(reference counting)允許對一個類別實體進行多個引用
*/

struct Resolution {
    //以下結構都有初始值，所以會得到更多個初始化方法
    var width = 0
    var height = 0
}
//定義影像模式類別
class VideoMode {
    var resolution = Resolution()    //解析度結構
    var interlaced = false           //預設非交錯模式
    var frameRate = 0.0             //畫面的更新頻率
    var name: String?               //影像模式名稱
    
    deinit {
        if let name {
            print("\(name)被釋放")
        } else {
            print("影像模式的實體被釋放")
        }
    }
}

//產生結構和類別的實體
let someResolution = Resolution()
let someVideoMode = VideoMode()
print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")

//使用結構成員的初始化方法產生結構實體(此記憶體配置空間只會有vga使用)
let vga = Resolution(width: 640, height: 480)

//----------結構和列舉是值型別(Structures and Enumerations Are Value Types)----------
/*
 值型別是一種型別，其值在傳遞給變數或常數或傳遞給函式的引數時會複製一份
 
 Swift中的所有基本型別 整數 浮點數 布林值 字串 陣列和字典 都是值型別 並在幕後以結構的形式實作
 所有的結構和列舉都是Swift中的值型別 這意味建立任何結構和列舉的實體，以及他們作為屬性的任何值類型在程式碼中傳遞時始終會被複製
 
*/

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd     //此行為為複製，會產生原來的HD和新的cinema為兩個獨立的記憶體配置空間
cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
print("hd is still \(hd.width) pixels wide")
    //原來的1920寬度不會跟著一起更動，為獨立的記憶體配置空間

enum CompassPoint {
    case north, south, east, west
    //當方法的實作包含變動"值型別"本身的值時，必須加上mutating關鍵字，如果方法的實作不會變動"值型別"本身的值時，可以不加上mutating關鍵字
    mutating func turnNorth() {
        self = .north
    }
}
//取得列舉實體
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
    //此行為為複製，會讓原來的currentDirection和新的rememberedDirection形成兩個獨立的記憶體空間配置
currentDirection.turnNorth()


print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")

//補充 在實體方法中修改值型別的值Modifying Value Types from Within Instance Methods
struct Point {
    var x = 0.0, y = 0.0
    //實體方法中修改值型別的值，必須加上mutating關鍵字
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
//-------------------------------------------------------------

//----------類別是引用型別～其行為是引用(Classes Are Reference Types)----------
//與執行別不同，引用型別在設定給變數或常數或傳遞給函式時不會被複製，而是對已經存在的實體進行引用（傳遞時會指向同一塊記憶體配置空間）
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty   //此行為是"引用型別"的引用(會引用到同一塊記憶體配置空間)，此時引用計數為2
alsoTenEighty.frameRate = 30.0
print("The frameRate property of tenEighty is now\(tenEighty.frameRate)")


//----------同時性/同步運作(Concurrency)----------
//asynchronous非同步(可以跟其他程式"同時"運作)
//synchronous同步;(不能跟其他程式"同時"運作)
//以下語法為Swift5.7之後增加
//使用async關鍵字標記"非同步"運行的函式。async關鍵字放置於參數也了列表之後，回傳值之前。
func fetchUserID(from server: String) async -> Int {
    //以下為模擬伺服器需要比較耗時的運作
    if server == "primary" {
        return 97
    }
    return 501
}

//呼叫非同步函式時，加入await關鍵字。
func fetchUsername(from server: String) async -> String {
    //以下模擬伺服器需要比較耗時的運作
    //常數userID必須await才能拿到非同步函式最後的回傳值(以同步的方式來呼叫非同步函式)
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        //以下為模擬伺服器需要比較耗時的運作
        return "John Appleseed"
    }
    return "Guest"
}

//使用async let呼叫其他非同步函式，讓他與其他非同步程式碼平行運作。使用非同步函式的回傳值時，請使用await關鍵字
func connectUser(to server: String) async {
    //以下為模擬伺服器需要比較耗時的兩種運作，以async let呼叫，以確保兩種運作可以同時執行
    async let userID = fetchUserID(from: server)
    async let username = fetchUsername(from: server)
    //在此行使用await關鍵字等待前面的非同步作業全部完成，才繼續以後的運作
    let greeting = await "Hello \(username), user ID \(userID)"
    print(greeting)
}

//不能在"同步"執行的程式碼區段使用await關鍵字呼叫非同步函式
//await connectUser(to: "abc")
//Error:Execution was interrupted

//呼叫Task函式在"同步區段"中，來定義"非同步區段"以呼叫非同步函式，而無須等待他們的回傳。
Task {  //以下為傳入Task函式的閉包
    await connectUser(to: "primary")
}

//以下語法為Swift新增功能
//使用任務群組(task group)來建立可以同步運作(Concurrent code)的程式碼
//使用withTaskGroup來區分可以執行多任務的區段
let userIDs = await withTaskGroup(of: Int.self) { group in
    for server in ["primary", "secondary", "development"] {
        group.addTask {
            return await fetchUserID(from: server)
        }
    }


    var results: [Int] = []
    for await result in group {
        results.append(result)
    }
    return results
}

//Actor與類別類似，只不過他們確保不同的非同步函式可以同時安全與同一個Actor的實體進行交互作用
actor ServerConnection {
    var server: String = "primary"
    private var activeUsers: [Int] = []
    func connect() async -> Int {
        let userID = await fetchUserID(from: server)
        // ... communicate with server ...
        activeUsers.append(userID)
        return userID
    }
}

//呼叫Actor的實體方法或存取其實體屬性時，可以將該程式碼以await關鍵字標記，只是他可以必須等待Actor上已運行的其他程式碼

//產生ServerConnection這個actor的實體
let server = ServerConnection()
let userID = await server.connect()

//----------設定和礦展(Protocols and Extensions)----------
//使用protocol關鍵字宣告協定，來定義協定的要求(requirement)，不包含實作
protocol ExampleProtocol {  //協定為為一份工作清單
     //協定要求：實作一個名為simpleDescription的屬性，其型別為String，"至少"是唯讀的屬性
     var simpleDescription: String { get }
     //協定要求：實作一個名為adjust的方法，沒有參數列表，沒有回傳值，以mutating關鍵字標示此方法的實作中，可以變動"值型別"的屬性
     mutating func adjust()
}

//----------類別 列獄警和結構都可以採納協定----------
//類別採納協定(adopt protocols)
class SimpleClass: ExampleProtocol {
     //當沒有協定要求時(少作任一要求時)，會有類似如下的錯誤訊息：
     //Type 'SimpleClass' does not conform to protocol 'ExampleProtocol'
     var simpleDescription: String = "A very simple class."
     var anotherProperty: Int = 69105
     //類別實作方法時，不需使用mutating關鍵字
     func adjust() {
          simpleDescription += "  Now 100% adjusted."
     }
}
//實體化類別
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

//結構採納協定
struct SimpleStructure: ExampleProtocol {
     //以"結構成員"來實作協定要求
     var simpleDescription: String = "A simple structure"
     //以變動方法來實作協定要求
     mutating func adjust() {
          simpleDescription += " (adjusted)"
     }
}
//實體化結構
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

//----------補充 選擇性的協定要求(Optional Protocol Requirements)----------
//選擇性的協定要求必須在Protocol關鍵字前方加上 @objc關鍵字
@objc protocol CounterDataSource {
    //選擇性實作的屬性或方法前方需加上 @objc optional
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
    var aInt:Int{get set}   //必須實作的屬性(開發文件描述為required)
}

//----------以協定當作型別(Protocols as Types)----------
//定義計數類別(通常為Framework的現成類別)
class Counter {
    //記錄累計數量
    var count = 0
    //有實作過CounterDataSource協定的"類別實體"or"結構實體"or"列舉實體"才能儲存在此屬性
    var dataSource: CounterDataSource?  //此為協定型別，只能看到協定相關的屬性和方法
    //累積數量的增值方法(啟動CounterDataSource協定的increment?(forCount: count)方法orfixedIncrement屬性)
    func increment() {
        //如果有實作過協定的增值方法，從此方法取得當次的累計數量
        if let amount = dataSource?.increment?(forCount: count) {
            count += amount
        //或者如果有時做過協定的增值屬性，從此屬性取得當次的累計數量
        } else if let amount = dataSource?.fixedIncrement {
            count += amount
        }
    }
}

//----------代理機制(Delegation)----------
//以ThreeSource類別實作CounterDataSource協定
class ThreeSource: NSObject, CounterDataSource {    //繼承自NSObject在Swift類別中可以省略
    //實作必要協定
    var aInt = 0
    //實作選擇性協定
    let fixedIncrement = 3
}

//初始化計數類別
var counter = Counter()
//為計數類別實體提供實作過CounterDataSource(ThreeSource類別實體)
counter.dataSource = ThreeSource()
for _ in 1...4 {
    //執行計數類別的增值方法
    counter.increment()
    print(counter.count)
}
