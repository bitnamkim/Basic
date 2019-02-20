//
//  ThirdViewController.swift
//  TabBar
//
//  Created by 흠냐방구 on 27/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func buttonAction(_ sender: Any) {
        outputLabel.text = "3번 버튼이 눌렸습니다."
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
