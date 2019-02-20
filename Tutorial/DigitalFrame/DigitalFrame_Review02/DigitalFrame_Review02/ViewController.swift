//
//  ViewController.swift
//  DigitalFrame_Review02
//
//  Created by 흠냐방구 on 21/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    
    
    // 버튼의 이름을 바꾸고 속성을 바꿀려면 IBOutlet으로 해줘야함.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cuteImages = [UIImage(named: "1.jpg")!,
                          UIImage(named: "2.jpg")!,
                          UIImage(named: "3.jpg")!,
                          UIImage(named: "4.jpg")!,
                          UIImage(named: "5.jpg")!,
                          UIImage(named: "6.jpg")!,
                          UIImage(named: "7.jpg")!,
                          ]
        
        imgView.animationImages = cuteImages
        imgView.animationDuration = 7
        speedLabel.text = String(format: "%.2f", speedSlider.value)
        // Speed 숫자를 정수로 표현해주는것.
    }
    @IBAction func toggleButton(_ sender: Any) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("start", for: UIControl.State.normal)
            // 토글버튼 상태 바꿔주는 코드. 위에 코드랑 반대되게 코드 짜야함. 자세한건 Review1에 있음.
        } else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("stop", for: UIControl.State.normal)
        }
}
    @IBAction func speedSlider(_ sender:Any){
        imgView.animationDuration = Double(speedSlider.value)
        // 이 코드가 있어야 사진 나오는 속도가 다양해짐. 이 코드 없으면 사진 나오는 속도 무조건 일정함.
        imgView.startAnimating()
        // 이 코드가 있어야 슬라이더 이동했을때 사진이 바뀜.
        speedLabel.text = String(format: "%.2f", speedSlider.value)
        // 이 코드가 있어야 Speed 변경했을때 변경된 스피드 제대로 표시해줌.
    }
    

}
