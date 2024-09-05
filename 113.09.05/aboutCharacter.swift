//let i:Character = "A"

// Swift 是一種很強調"安全性"的程式語言
// "安全性"有很多方面,但在程式語言安全性有一個重點："變數的合法存取"安全性
// Swift 用 Optional Value Type 的機制解決：簡單記住 ==> Optional Value Type 可以保障程式碼存取

var i:Int?  // 在TYPE後加？,意思是"請求系統幫我保護這個變數避免不安全的存取" ===> 這種有？在TYPE後面的
            // 宣告方式就叫做Optional Value Type
// 當一個變數使用Optional Value Type機制保護之後,使用上就必須遵照Optional Value Type的規範
i = 123   //指定值的時候照常
print(i)  //取值用的時候要注意,要遵照Optional Value Type的規範取用
          //否則 輕則警告 重則系統會出面終止程式運行

//Optional Value Type的規範取用規範就是加一個"!"
//print(i!)
//print(i.asciiValue!)
