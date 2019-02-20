//
//  ViewController.swift
//  DigitalFrame_Dec10_2
//
//  Created by 흠냐방구 on 10/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var speedSliderLabel: UILabel!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var toggleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named: "1.jpg")!,
                          UIImage(named: "2.jpg")!,
                          UIImage(named: "3.jpg")!,
                          UIImage(named: "4.jpg")!,
                          UIImage(named: "5.jpg")!
                          ]
        imgView.animationImages = cuteImages
        imgView.animationDuration = 10
        speedSliderLabel.text = String(format:"%.2f", speedSlider.value)
        
    }
    @IBAction func speedSliderAction(_ sender: Any) {
        imgView.startAnimating()
        speedSliderLabel.text = String(format:"%.2f", speedSlider.value)
        toggleButton.setTitle("Stop", for: UIControl.State.normal)
        
        
    }
    @IBAction func toggleButtonAction(_ sender: Any) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControl.State.normal)
        } else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
        }
    }
    

}

