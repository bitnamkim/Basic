//
//  ViewController.swift
//  DigitalFrame_Dec10
//
//  Created by 흠냐방구 on 10/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButtonLabel: UIButton!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named: "1.jpg")!,
                          UIImage(named: "2.jpg")!,
                          UIImage(named: "3.jpg")!,
                          UIImage(named: "4.jpg")!,
                          UIImage(named: "5.jpg")!,
                          UIImage(named: "6.jpg")!,
                          UIImage(named: "7.jpg")!
                          ]
        imgView.animationImages = cuteImages
        imgView.animationDuration = 10
        
        
    }
    @IBAction func toggleButtonAction(_ sender: Any) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButtonLabel.setTitle("Start", for: UIControl.State.normal)
        } else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButtonLabel.setTitle("Stop", for: UIControl.State.normal)
        }
    

}
    @IBAction func speedSliderAction(_ sender: Any) {
        toggleButtonLabel.setTitle("Stop", for: UIControl.State.normal)
        imgView.startAnimating()
        imgView.animationDuration = Double(speedSlider.value)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
}
