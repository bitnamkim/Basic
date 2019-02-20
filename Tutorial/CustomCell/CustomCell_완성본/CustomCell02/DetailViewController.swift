//
//  DetailViewController.swift
//  CustomCell02
//
//  Created by 흠냐방구 on 27/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    
    var detaildata = [String:String]()
    
    // ViewContorller에서 넘어온 딕셔너리 값들을 받아줘야하니까 만들었음.
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imgView.layer.cornerRadius = 50
//        imgView.layer.masksToBounds = true
//
//        nameLabel.text = detaildata["name"]
//        amountLabel.text = detaildata["amount"]
//        valueLabel.text = detaildata["value"]
//
//        imgView.image = UIImage(named: detaildata["image"]!)
        
        
        nameLabel.text = detaildata["name"]
        amountLabel.text = detaildata["amount"]
        valueLabel.text = detaildata["value"]
        
        imgView.layer.cornerRadius = 50
        imgView.layer.masksToBounds = true
        imgView.image = UIImage(named: detaildata["image"]!)
        
        // Do any additional setup after loading the view.
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
