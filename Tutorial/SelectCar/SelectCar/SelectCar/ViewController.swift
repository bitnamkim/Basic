//
//  ViewController.swift
//  SelectCar
//
//  Created by 흠냐방구 on 26/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    // Picker View 사용할려면 UIPickerViewDataSource, UIPickerViewDelegate 둘 다 선언해주고 아래에 있는 메써드 3개 써줘야함.
    @IBOutlet weak var imgVIew: UIImageView!
    
    let carCompanyName = ["Tesla","Lamborghini", "Porsche"]
    // 0번 컴퍼넌트에는 회사이름 들어갈거임
    var carModel = [String]()
    // 1번 컴퍼넌트에는 자동차 모델 들어갈거임
    
    var carModelImage = [String]()
    
    let tesla = ["Model S", "Model X"]
    let lamborghini = ["aventador", "veneno", "huracan"]
    let porsche = ["911", "boxter"]
    
    let teslaImageNames = ["tesla-model-s", "tesla-model-x"]
    let lamborghiniImageNames = ["lamborghini-aventador", "lamborghini-veneno", "lamborghini-huracan"]
    let porscheImageNames = ["porsche-911", "porsche-boxter"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carModel = tesla
        carModelImage = teslaImageNames
        
        imgVIew.layer.cornerRadius = 50
        imgVIew.layer.masksToBounds = true
        // 코드로 UI 처리하는 거임. UI 동그랗게 해주는거임.
    }
    
    // Break Point 사용하는 이유 : 프로그램이 돌아가는 프로세스를 알려줌. 디버그 기능으로 사용하는거임. 어떤 프로토콜의 명령을 받고 동작을 실행하는지 알 수 있음. 내부적인 기능, 메카니즘을 알 수 있음.
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2 // 컴퍼넌트의 갯수
        // UIPickerViewDataSource 메써드임
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompanyName.count
        } else {
            return carModel.count
        }
        // UIPickerViewDataSource 메써드임
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carCompanyName[row]
        } else {
            return carModel[row]
          // UIPickerViewDelegate 메써드임.
        } // Delegate 기능 써줄려면 Main 스토리 보드에서 UI에서 Delegate 연결해줘야함.
          // 하드코딩으로 Pickerview.delegate = self 이렇게 해줘도 되는데, 되게 귀찮음. 걍 UI로 연결하자.
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0 {
            carModel = tesla
            carModelImage = teslaImageNames
        } else if component == 0 && row == 1 {
            carModel = lamborghini
            carModelImage = lamborghiniImageNames
        } else if component == 0 && row == 2 {
            carModel = porsche
            carModelImage = porscheImageNames
        }
        pickerView.reloadAllComponents()
        // component가 바뀔때마다 새로운 값을 가져오라는 코드.
        // 0번 컴퍼넌트의 Row가 바뀌면 1번 컴퍼넌트의 Row를 바꿔주는 메써드. 자동차 회사 이름에 맞게 자동차를 바꿔주는 메써드
        imgVIew.image = UIImage(named: carModelImage[pickerView.selectedRow(inComponent: 1)])
        // Pikcer View에서 carModelImage의 선택된 Row를 출력하라는 코드.
    }
    


}

