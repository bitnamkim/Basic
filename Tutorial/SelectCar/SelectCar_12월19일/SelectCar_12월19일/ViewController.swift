//
//  ViewController.swift
//  SelectCar_12월19일
//
//  Created by 흠냐방구 on 19/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var imgView: UIImageView!
    
    var carCompanyName = ["Tesla", "Lamborghini", "Porsche"]
    var carModel = [String]()
    var carModelImage = [String]()
    
    let tesla = ["Model S", "Model X"]
    let lamborghini = ["aventador", "veneno", "huracan"]
    let porsche = ["911", "boxter"]
    
    let teslaImageNames = ["tesla-model-s.jpg","tesla-model-x.jpg"]
    let lamborghiniImageNames = ["lamborghini-aventador.jpg","lamborghini-veneno.jpg","lamborghini-huracan.jpg"]
    let porscheImageNames = ["porsche-911.jpg","porsche-boxter.jpg"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel = lamborghini
        carModelImage = lamborghini
        imgView.layer.cornerRadius = 50
        imgView.layer.masksToBounds = true
        
        // 🐷🐷Picker View는 Target-Action을 못 사용함. 그래서 코딩으로 데이터 넣고 액션 호출해야함.
        
        // Delegate, DateSource 이 두 가지는 꼭 스토리보드에서 연결해주기!
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // UIPickerViewDataSource의 required 메써드
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // UIPickerViewDataSource의 required 메써드
        if component == 0 {
            return carCompanyName.count
        } else {
            return carModel.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // UIPickerViewDelegate의 required 메써드
        // row에 맞는 title들을 콜해주는거임.
        // 메써드 콜 되는 순서(메카니즘) : 0번 컴퍼넌트 0번 row, 0번 컴퍼넌트 1번 row, 0번 컴퍼넌트 2번 row... 이렇게 순차적으로 콜됨.
        if component == 0 {
            return carCompanyName[row]
        } else {
            return carModel[row]
        }
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
        // 이 코드 써줘야 화면에 picker view가 나옴.
        imgView.image = UIImage(named: carModel[pickerView.selectedRow(inComponent: 1)])
        // 선택한 컴퍼넌트의 해당하는 row의 인덱스를 호출해줌.
        // 1번 컴퍼넌트에서 선택된 row들의 값을 pickerview에 호출해줌. 이 경우는 자동차 이미지들을 row에 따라 알맞게 호출해주라는 코드임.
}

}
