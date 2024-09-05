// Collection 集合： 一堆以特定規則聚集起來的資料
// Swift：有四種規則 ---> Array(List)---陣列(串列), Set(組合), Dictionary(字典), Tuple(砸堆)

//Array:
//      1.資料是有順序的,以索引(從0開始算)區別
//      2.元素必須同類型


var friendList:[String]  //宣告1  --->  便捷宣告
var score:Array<String>  //宣告2  --->  標準宣告

print(type(of: friendList))
print(type(of: score))

print("===============分割線===============")

//建構子 ===> 物件形態() ---> 其功能就是可以在記憶體中把物件打造出來(實際佔有記憶體)
friendList = [String]()
print(friendList)

print("===============分割線===============")

//物件指令 ===> 物件.指令(參數)
friendList.append("Jhon")
friendList.append("Mary")
print(friendList)

print("===============分割線===============")

//物件屬性 ===> 物件.屬性 <--- 注意沒有小括號 <--- 他是一個"值"
var countPeople = friendList.count
print("I have \(countPeople) friend .")

print("===============分割線===============")

//物件指令 ===> 物件.指令(參數)
friendList.append("Simen")
friendList.append("Alex")
print(friendList)
countPeople = friendList.count
print("I have \(countPeople) friend .")

print("===============分割線===============")

friendList.insert("Kelly", at: 0)
print(friendList)
countPeople = friendList.count
print("I have \(countPeople) friend .")

print("===============分割線===============")

friendList.remove(at: 3)
print(friendList)
countPeople = friendList.count
print("I have \(countPeople) friend .")
