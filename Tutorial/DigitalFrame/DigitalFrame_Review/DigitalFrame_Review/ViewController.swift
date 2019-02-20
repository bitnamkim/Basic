//
//  ViewController.swift
//  DigitalFrame_Review
//
//  Created by 흠냐방구 on 14/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!

    override func viewDidLoad() {
        // viewDidLoad 이 부분은 초기화 세팅 해주는 곳임.
        super.viewDidLoad()
        
        let cuteImages = [UIImage(named:"1.jpg")!,
                          UIImage(named:"2.jpg")!,
                          UIImage(named:"3.jpg")!,
                          UIImage(named:"4.jpg")!,
                          UIImage(named:"5.jpg")!,
                          UIImage(named:"6.jpg")!,
                          UIImage(named:"7.jpg")!]
        
        imgView.animationImages = cuteImages
        // UIImageView는 배열 형식으로 값을 넣어주어야함.
        // 그래서 cuteImages가 배열 형식임.
        imgView.animationDuration = 7
        // 문서 보면 클래스 사용법 나와있음
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
    @IBAction func toggleButton(_ sender:Any){
       
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControl.State.normal)
            // 만약 imgView가 현재 플레이 되고 있으면, 멈추고, 버튼은 스타트로 표시하는 코드.
        }else{
            imgView.animationDuration = Double(speedSlider.value)
            //  speedSlider의 값이 float이라서 형변환 해줘야함.
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
            // imgView가 플레이 되고 있지 않으면, 플레이하고, 버튼은 스탑으로 표시하는 코드.
        // 문서보면 클래스 사용법 나와있음
        
    }
    }
    
    @IBAction func speedSliderAction(_ sender:Any){
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        // 속도 슬라이더의 값을 변경하고 떼자마자 동작되게 하는 코드
        // speedLabel.text = "\(speedSlider.value)" <- 이렇게 하면 소수점이 다 나와버림
        speedLabel.text = String(format: "%.2f", speedSlider.value)
        // 소수점 2째자리까지 float 타입으로 입력하라는 코드
        
    }


}

