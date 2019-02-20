//
//  ViewController.swift
//  AppLifeCycle_Review
//
//  Created by 흠냐방구 on 19/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        print("===============")
        // viewDidLoad 에 초기화 하는 이유 : 컨트롤러 뷰가 메모리 안으로 로딩되고 난 후에 호출됨. 그래서 맨 처음에 나오게 되므로 여기에 초기화 코드를 써줄것.
        // 문서 확인해서 볼 것.
        // 최초 한번만 호출됨. 그래서 여기에 초기화 해주는거임.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        print("===============")
        // viewWillAppear은 view가 바뀔때마다 호출됨. 그래서 여기에 초기화 해주면 안됨.
        // UIViewController 메써드중에서 이 메써드를 가장 많이 사용함. 밑에 3개는 사용안함.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
        print("===============")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
        print("===============")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
        print("===============")
    }


}

