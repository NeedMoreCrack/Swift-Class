// Character 字元：嚴格定義 ===> 一個電腦可以辨識的符號

// String 字串："..."
// 嚴格定義：數量不定的字元組成的物件

var oneChar:Character

oneChar = "A"
print(oneChar)

// 羅馬字母 + 常用的符號 + 數字符號 + 特殊符號 = ASCII字元
// 美國國家標準局 ANSI
/*
    有256個符號 編號：0～255
    0～31 ---> 一個字元 <--- = ""
    32～127(本來是128,但因故128被拿走) ---> 羅馬字母 + 常用符號 + 數字符號
    129～255 ---> 開放給非盎格魯薩克遜字母地區使用
*/

// unicode ===> unicode(UTF-8), unicode64 ===> 編碼比較複雜(查表)
oneChar = "你"
print(oneChar)

print("====================")
