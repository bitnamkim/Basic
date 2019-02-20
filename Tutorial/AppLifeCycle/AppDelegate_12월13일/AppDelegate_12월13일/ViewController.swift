//
//  ViewController.swift
//  AppDelegate_12월13일
//
//  Created by 흠냐방구 on 13/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        // override 되어 있다는 것은 UIViewController에 정의되어 있거나 그 상위(UIResponder)에 정의되어 있다는 뜻임.
        super.viewDidLoad()
        print("viewDidLoad")
    }
        // xib = nib. 예전에는 nib 파일이였는데 최근에 명칭이 xib로 바뀜. 근데 발음은 그대로 nib임. nib 파일은 UI 기능을 수행함. nib파일들의 기능이 모여있는것이 storyboard(=Interface Builder)임.
    
    override func viewWillAppear(_ animated: Bool) {
        // 최강사님은 실제 앱을 만들때, viewWillAppear을 가장 많이 쓴다고함. 나머지 밑에 있는 메써드는 사용안함.
        // viewWillAppear을 사용하는 시기는 앱 내에서 환경설정을 할 때 사용함. 설정을 바꾼 다음에, 바뀐 설정에 따라서 UI가 바뀌어야 하는 때에 메써드들을 이곳에다 써줌. 
        print("viewWillAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    


}

