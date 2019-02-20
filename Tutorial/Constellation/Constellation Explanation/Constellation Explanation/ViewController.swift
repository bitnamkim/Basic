//
//  ViewController.swift
//  Constellation Explanation
//
//  Created by 흠냐방구 on 28/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func backButtonAction(_ sender: Any) {
    
    self.navigationController?.popViewController(animated: true)
        // navigationController 하위에 있으면 속성으로 인텔리센스키에 자연스럽게 잡힘.
    }
    
}

