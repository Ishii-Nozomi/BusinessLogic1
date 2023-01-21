import UIKit
import Foundation
import PlaygroundSupport


// ①ドアが開いたら庫内が光る
func microwave(openTheDoor: Bool) -> Void {
    var insideTheMicrowave: UIColor = .black
    if openTheDoor == true {
        insideTheMicrowave = .orange
        print("ドアが開いた状態")
    } else if openTheDoor == false {
        insideTheMicrowave
        print("ドアが閉じた状態")
    }
}
microwave(openTheDoor: true)

// ②ワット数を決める
var wattButton = ["500w", "600w", "1000w"]
print(wattButton)
private func wattButtonInfo(wattButton: String) {
    switch wattButton {
    case "500w" :
        print("500wで温める")
    case "600w" :
        print("600wで温める")
    case "1000w" :
        print("1000wで温める")
    default :
        print("設定できません。")
    }
}
wattButtonInfo(wattButton: "500w")

// ③タイマーの時間を表示する
var timerButton = ["1分", "50秒", "40秒", "30秒", "20秒", "10秒"]
print(timerButton)

// ④温める時間を設定する
private func timerButtonInfo(timerButton: String) {
    switch timerButton {
    case "1分" :
        print("1分設定")
    case "50秒":
        print("50秒設定")
    case "40秒":
        print("40秒設定")
    case "30秒":
        print("30秒設定")
    case "20秒":
        print("20秒設定")
    case "10秒":
        print("10秒設定")
    default:
        print("設定できません。")
    }
}
timerButtonInfo(timerButton: "1分")

// ⑤ボタンを押して温めスタート
let startButton = "スタート"



