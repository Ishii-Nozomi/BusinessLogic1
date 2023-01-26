import UIKit
import Foundation
import PlaygroundSupport

var insideTheMicrowave: UIColor = .black
// ①ドアが開いたら庫内が光る
func microwave(openTheDoor: Bool) -> Void {
    if openTheDoor == true {
        insideTheMicrowave = .orange
        print("ドアが開いた状態")
    } else if openTheDoor == false {
        insideTheMicrowave = .black
        print("ドアが閉じた状態")
    }
}
microwave(openTheDoor: true)
microwave(openTheDoor: false)

// ②ワット数を決める
var wattButton = ["500w", "600w", "1000w"]
print(wattButton)
enum Watt: String, CaseIterable {
    case low = "500w"
    case middle = "600w"
    case high = "1000w"
}
private func wattButtonInfo(wattButton: Watt) {
    switch wattButton {
    case .low :
        print("500wで温める")
    case .middle :
        print("600wで温める")
    case .high :
        print("1000wで温める")
    }
}
var wattButtons: [Watt] = [.low, .middle, .high]
wattButtonInfo(wattButton: .low)

// ③タイマーの時間を表示する
var timerButton = ["1分", "50秒", "40秒", "30秒", "20秒", "10秒"]
print(timerButton)


// ④温める時間を設定する
enum Limit: Int, CaseIterable {
    case oneminute = 60
    case fiftySeconds = 50
    case fortySeconds = 40
    case thirtySeconds = 30
    case twentySeconds = 20
    case tenSeconds = 10
}
private func timerButtonInfo(timerButton: Limit) {
    switch timerButton {
    case .oneminute :
        print("1分設定")
    case .fiftySeconds:
        print("50秒設定")
    case .fortySeconds:
        print("40秒設定")
    case .thirtySeconds:
        print("30秒設定")
    case .twentySeconds:
        print("20秒設定")
    case .tenSeconds:
        print("10秒設定")
    }
}
timerButtonInfo(timerButton: .tenSeconds)

// ⑤ボタンを押して温めスタート
private func startButtonInfo(startButton: Bool, time: Int) {
    
    // タイマー機能追加
    PlaygroundPage.current.needsIndefiniteExecution = true
    class Alarm {
        var timer: Timer?
        var count: Int = 0
        var limit: Int = 10
        
        func start() {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(countDown),
                userInfo: nil,
                repeats: true
            )
        }
        
        @objc func countDown() {
            // countの値をインクリメントする
            limit -= 1
            print("カウントは\(limit)です")
            // countの値がlinitの値以上になったif文を実行
            if limit == count {
                print("ピピピピ!(できました)")
                // タイマーを止める
                timer?.invalidate()
                insideTheMicrowave = .black
            }
        }
    }
    let alarm = Alarm()
    alarm.start()
    
    if startButton == true {
        insideTheMicrowave = .orange
        print("温めスタート")
        

    }
}
startButtonInfo(startButton: true, time: 10)





