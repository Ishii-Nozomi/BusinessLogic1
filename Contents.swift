import UIKit
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

// ②タイマーの時間を表示する
var timerButton = ["1分", "50秒", "40秒", "30秒", "20秒", "10秒"]
print(timerButton)
// ③温める時間を設定する

// ④ボタンを押して温めスタート


