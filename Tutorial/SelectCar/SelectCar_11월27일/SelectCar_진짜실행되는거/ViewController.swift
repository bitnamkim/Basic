//
//  ViewController.swift
//  whynot
//
//  Created by 흠냐방구 on 26/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

// IBOutlet : 메써드에 따라 View가 어떤 동작(변화)을 해야할때, 해당 객체에 연결.
// IBAction : View가 어떤 동작(변화)을 하게끔, 메써드를 적용해야하는 객체에 연결.
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var imgView: UIImageView!
    let carCompanyName = ["Tesla","Lamborghini","Porsche"]
    var carModel = [String]()
    
    var carModelImage = [String]()
    
    let tesla = ["Model S","Model X"]
    let lamborghini = ["aventador","veneno","huracan"]
    let porsche = ["911","boxter"]
    
    let teslaImageNames = ["tesla-model-s.jpg","tesla-model-x.jpg"]
    let lamborghiniImageNames = ["lamborghini-aventador.jpg","lamborghini-veneno.jpg","lamborghini-huracan.jpg"]
    let porscheImageNames = ["porsche-911.jpg","porsche-boxter.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        carModel = tesla
        carModelImage = teslaImageNames
        imgView.layer.cornerRadius = 50
        imgView.layer.masksToBounds = true

        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompanyName.count
        } else {
            return carModel.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
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
        imgView.image = UIImage(named: carModelImage[pickerView.selectedRow(inComponent: 1)])
    }
}





