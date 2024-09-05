// 輸入第一排數字
var 幾人:String?
幾人 = readLine()

// 輸入第二排一串數字
var 第二排字串分前:String?
第二排字串分前 = readLine()
var 第二排字串分前去保護:String = 第二排字串分前!

let 雞歪中間值:[String.SubSequence]    // 等一下呼叫 split(seperated:...)分割好會
回傳的雞歪中間值
雞歪中間值 = 第二排字串分前去保護.split(separator: " ")

var 變成Int分數的值:[Int] = []

for x in 雞歪中間值 {
    變成Int分數的值.append(Int(x)!)    // Int(...)
}

// 排序
變成Int分數的值.sort()
print(變成Int分數的值)

// 找最不幸
var 關鍵索引 = 0
for 索引 in 0..<變成Int分數的值.count {
    if  變成Int分數的值[索引] >= 60{
        關鍵索引 = 索引     // 最幸運的索引位置
        break             // break 出現在迴圈就會終止迴圈繼續
    }
}
print("最幸運:\(變成Int分數的值[關鍵索引]), 最不幸:\(變成Int分數的值[關鍵索引-1])")
