//
//  ViewController.swift
//  FlightBooking
//
//  Created by 흠냐방구 on 20/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var selectedDatePicker: UIDatePicker!
    
    var buttonTag: Int = 1
    // UI 들을 구분하기 위해서 tag를 해줘야함. 메써드를 여러군데에서 써야하기 때문에 글로벌 변수로 설정해줘야함. Tag 하는 법은 태그할 UI 클릭해서 View 부분에서 태그하기.
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateButton.isHidden = true
        returnDateLabel.isHidden = true
        selectedDatePicker.isHidden = true
        // isHidden은 UIView의 하위 클래스임. 문서에 사용법 나와있음.
    }
    @IBAction func showDatePickerAction(_ sender:UIButton) {
        if selectedDatePicker.isHidden == true {
            // 숨겨져 있으면
            selectedDatePicker.isHidden = false
            // 나타나게 해라
        } else {
            selectedDatePicker.isHidden = true
            // 나타나 있으면, 숨겨라
        }
        buttonTag = sender.tag

    }
    @IBAction func showReturnDateAction(_ sender:UISwitch) {
        // sender는 이벤트를 발생한 객체를 받아주는 역할. 이 메써드의 객체를 받아주니까 메써드에 맞는 객체명을 sender 뒤에 써주면 됨.
//        if sender.isOn {
//            returnDateLabel.isHidden = false
//            returnDateButton.isHidden = false
//        } else {
//            returnDateLabel.isHidden = true
//            returnDateButton.isHidden = true
//        }
            // 위에 코드를 확 줄이는 방법이 있음.
        returnDateLabel.isHidden = !sender.isOn
        // ! (not 인자)를 사용해서 코드를 줄였음. sender가 꺼져있으면 레이블을 숨겨라.
        returnDateButton.isHidden = !sender.isOn
        // sender가 꺼져 있으면 버튼을 숨겨라.
        
        
    }
    @IBAction func selectedDateAction(_ sender:UIDatePicker) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        // DateFormatter 사용하는 방법 문서에 있음.
        
        let dateString = formatter.string(from:sender.date)
        // formatter 사용하는 방법 문서에 있음. sender의 날짜를 string으로 바꿔주는거임.
        if buttonTag == 1 {
        departureDateButton.setTitle(dateString, for: UIControl.State.normal)
        } else {
            returnDateButton.setTitle(dateString, for: UIControl.State.normal)
        }
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        // 목적지, 도착지 입력하고 view 누르면 키보드 내려가게 하는 코드
        selectedDatePicker.isHidden = true
        // DatePicker 선택하고 view 누르면 DatePicker 없어지게 하는 코드
    }
}
