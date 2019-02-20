//
//  ViewController.swift
//  FlightBooking_Review
//
//  Created by 흠냐방구 on 22/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    @IBOutlet weak var departureTextField: UITextField!
    @IBOutlet weak var arriveTextField: UITextField!
    
    var buttonTag:Int = 1
    // 글로벌하게 써줘야 하니까 여기에 변수선언 해줘야함.
    
    // IBOutlet : 메써드에 따라 View가 어떤 동작(변화)을 해야할때, 해당 객체에 연결.
    // IBAction : View가 어떤 동작(변화)을 하게끔, 메써드를 적용해야하는 객체에 연결.
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
        // 맨 처음 화면에서 UI들이 안보여야 하니까 초기화 하는 곳에 써줘야함.
    }
    @IBAction func showDatePickerAction(_ sender: UIButton) {
        if selectDatePicker.isHidden == false {
            selectDatePicker.isHidden = true
        } else {
            selectDatePicker.isHidden = false
        }
        buttonTag = sender.tag
    }
    @IBAction func showReturnDateAction(_ sender: UISwitch) {
//        if sender.isOn {
//            returnDateButton.isHidden = false
//            returnDateLabel.isHidden = false
//        } else {
//            returnDateButton.isHidden = true
//            returnDateLabel.isHidden = true
//        }
        returnDateButton.isHidden = !sender.isOn
        returnDateLabel.isHidden = !sender.isOn
        // sender.isOn 이 속성은 UISwitch에서만 사용할 수 있음. 스위치를 껐다 켰다 하는것이기 때문에.
    }
    @IBAction func returnDateAction(_ sender: Any) {
        if selectDatePicker.isHidden == false {
            selectDatePicker.isHidden = true
        } else {
            selectDatePicker.isHidden = false
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        departureTextField.resignFirstResponder()
        arriveTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func selectedDateAction(_ sender:UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        // 날짜 표현법 문서에 잘 나와있음.
        let dateString = formatter.string(from: sender.date)
        // 날자를 문자열로 형변환 해주는 코드
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControl.State.normal)
        }else{
            returnDateButton.setTitle(dateString, for: UIControl.State.normal)
            // setTitle은 UIButton 밑에 있는 메써드임. 앞에 수업 내용에서 했었음. 근데 어떤 프로젝트인지 기억이 안남;; 사용법 숙지할것.
        }
        
        
    }
    
    
}
