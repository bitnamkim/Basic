//
//  ViewController.swift
//  FlightBooking_12월18일
//
//  Created by 흠냐방구 on 18/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectDatePicker: UIDatePicker!
    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    
    var buttonTag:Int = 1
    // 클래스 전체에 쓸꺼라서 여기에 선언해줬음.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
        
    }
    
    @IBAction func showDatePickerAction(_ sender: UIButton) {
        // departureDateButton, returnDateButton에 있는 action
        // action이 두개의 버튼에 같이 연결되어 있는 상황. 밑에 departureDateButton.setTitle(dataString, for: UIControl.State.normal) 코드를 통해서 날짜를 바꾸면 Departure 버튼의 데이터는 변하는데 returnDateButton의 데이터는 안 변함.
        // 이를 설정하기 위해서 departureDateButton이랑 returnDateButton에 'tag'를 사용해서 순서대로 메써드를 적용해줌.
        if selectDatePicker.isHidden == false {
            selectDatePicker.isHidden = true
        } else {
            selectDatePicker.isHidden = false
        }
        buttonTag = sender.tag
    }
    @IBAction func showReturnDateAction(_ sender:UISwitch) {
        // switch에 있는 action
        // 괄호 안에 있는 sender는 이벤트를 발생시킨 객체를 지칭하는거임.
        returnDateButton.isHidden = !sender.isOn
        returnDateLabel.isHidden = !sender.isOn
        
    }
    @IBAction func selectedDateAction(_ sender:UIDatePicker) {
        // selectDatePicker에 있는 action.
        // 여기서 날짜를 바꾸면 departureDateButton, returnDateButton에 데이터를 쏴줌.
        let formatter = DateFormatter()
        // 이렇게 맨처음에 객체를 하나 만들어줘야함.
        formatter.dateFormat = "YY-MM-d hh:mma"
        // 만들어준 객체의 dateFormat이라는 프로퍼티를 사용해서 날짜출력방식 선언.
        
        let dataString = formatter.string(from: sender.date)
        // setTitle 괄호 안에는 string 밖에 안들어가니까 날짜를 string으로 바꿔주고 넣어준거임. sender의 date 값을 형변환 해준거임.
        if buttonTag == 1 {
            departureDateButton.setTitle(dataString, for: UIControl.State.normal)
        } else {
            returnDateButton.setTitle(dataString, for: UIControl.State.normal)
        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
    
    

}

