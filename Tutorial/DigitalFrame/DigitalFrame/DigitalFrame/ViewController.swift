//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 흠냐방구 on 08/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView : UIImageView!
    @IBOutlet weak var toggleButton : UIButton!
    @IBOutlet weak var speedSlider : UISlider!
    @IBOutlet weak var speedLabel : UILabel!
    
    // 이미지 뷰를 컨트롤 하기 위해 IBOutlet을 만들어야함.
    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named:"1.jpeg")!,
                          UIImage(named:"2.jpeg")!,
                          UIImage(named:"3.jpg")!,
                          UIImage(named:"4.jpg")!,
                          UIImage(named:"5.jpeg")!
                          ]   // 이렇게 상수 선언하는 방법 문서에 나와있음. 다시 복습할 것.
        imgView.animationImages = cuteImages
        // animationImages 프로퍼티를 cuteImages에 할당해준다. 속성을 cuteImages에 부여해준다고 해석하면 됨.
        imgView.animationDuration = 10
        speedLabel.text = String(format: "%.2f", speedSlider.value)
        // 소수점 둘째 자리까지 플롯 타입으로 값을 넣어라. C언어 타입의 소수점 자리 표현방법임.
        
        
    }
    @IBAction func toggleButton(_ sender:Any) {
        // imgView.startAnimating()
        // 누를때마다 상황이 바뀌는걸 toggle 이라고 함.
        // 이 코드만 쓰면 스탑을 못함.
        if imgView.isAnimating{
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControl.State.normal)
            // 토글버튼에 '특정한 상태값'을 주는거임. imgView가 stopAnimating하면 버튼이 start로 바뀌게 하라.
            // animating이 되고 있는 상황이면 stop 하라!
        }else{
            imgView.animationDuration = Double(speedSlider.value)
            // animationDuration 값을 주게되면 애니메이션(사진이 플레이 되는것)이 멈춤. 이건 그냥 UIImageView 특징임.
            // 그래서 imgView.isAnimating{ 여기 조건문 밑에 써주면 안됨. 여기 밑에다 쓰면 바로 stop이 되어서 계속 else 이하 구문만 적용됨. 즉, stopAnimating()상태만 계속 유지되는거임.
            // value가 float 값이여서 double로 형변환 해줘야함. TimeInterval이 Double형태라서 그런거임. 이미지 캡쳐 참고!
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
        }

}
    
    @IBAction func speedSliderAction(_ sender:Any) {
        // 이 메써드는 슬라이드 바 이동하면 바로 사진이 움직이게 하는 메써드임.
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            // animationDuration으로 값이 바뀌고, startAnimating()으로 바로 시작하라.
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
            // stop 버튼 작동하게 하는 코드
            speedLabel.text = String(format: "%.2f", speedSlider.value)
        
    }
    
}

