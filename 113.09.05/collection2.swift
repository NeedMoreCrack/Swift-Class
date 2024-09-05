/*
var score:Array<Int>  //宣告
score = Array<Int>()  //建構

var score:[Int]  //宣告
score = [Int]()  //建構
*/

//更便捷的方式
//var score:[Int] = [34,56,87,29,77,64,91,15,6,34]

let arr1:[Int] = [1,4,6,2]
let arr2:[Int] = [3,5,2,4]

var result:[Int] = [Int]()

if arr1.count == arr2.count {
    for i in 0..<arr1.count {
        let sum = arr1[i] + arr2[i]
        result.append(sum)
    }
    print(result)
} else {
    print("Arrays must of same length.")
}
