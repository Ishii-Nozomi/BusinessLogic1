import UIKit
import PlaygroundSupport


// ①ドアが開いたら庫内が光る
var openTheDoor: Bool = true
var insideTheMicrowave: UIColor
if openTheDoor == true {
    insideTheMicrowave = .orange
    print("庫内が光る")
} else {
    insideTheMicrowave = .gray
    print("庫内が光らない")
}

// ②タイマーの時間を表示する
var timer: Int = 0
timer = 50
// ③温める時間を設定する

// ④ボタンを押して温めスタート


