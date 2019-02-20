//
//  ThirdViewController.swift
//  Tabbar_12월19일
//
//  Created by 흠냐방구 on 19/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var outputTextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func numberButtonAction(_ sender: Any) {
        outputTextLabel.text = "3번 버튼이 눌렸음."
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
