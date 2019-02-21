//
//  ViewController.swift
//  WeatherApp
//
//  Created by Pigman on 21/02/2019.
//  Copyright © 2019 Pigman. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON
import Alamofire
import CoreLocation
import NVActivityIndicatorView

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherImgView: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var backgroundView: UIView!
    
    let gradientLayer = CAGradientLayer()   // 밤, 낮 바뀌면 백그라운드 컬러 바꿔주는 인스턴스
    let apiKey = "8c1e240150949fb7bfe0bf0503c8a20e"
    var latitude = 11.344533    // default 값
    var longitutde = 104.33322   // default 값
    var activityIndicator: NVActivityIndicatorView!
    let locationManager = CLLocationManager()   // 유저의 위치정보 데이터를 나한테 알려줌
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.addSublayer(gradientLayer)
        
        let indicatorSize: CGFloat = 70
        let indicatorFrame = CGRect(x: (view.frame.width-indicatorSize)/2, y: (view.frame.height-indicatorSize)/2, width: indicatorSize, height: indicatorSize)
        
        activityIndicator = NVActivityIndicatorView(frame: indicatorFrame, type: NVActivityIndicatorType.lineScale, color: .white, padding: 20.0)
        activityIndicator.backgroundColor = UIColor.black
        view.addSubview(activityIndicator)
        
        locationManager.requestWhenInUseAuthorization()     // 유저의 현재위치에 엑서스 하는 팝업창 띄우는 코드
        activityIndicator.startAnimating()
        
        if(CLLocationManager.locationServicesEnabled()){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setBlueGradientBackground()

    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        longitutde = location.coordinate.latitude
        latitude = location.coordinate.longitude
        Alamofire.request("http://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitutde)&appid=\(apiKey)&units=metric").responseJSON {
            response in
            self.activityIndicator.stopAnimating()
            if let responseStr = response.result.value {
                let jsonResponse = JSON(responseStr)
//                if let myJsonWeather = jsonWeather {
//                    jsonResponse["weather"].array![0]
//                }
                let jsonWeather = jsonResponse["weather"].array![0]
                let jsonTemp = jsonResponse["main"]
                let iconName = jsonWeather["icon"].stringValue
                
                self.locationLabel.text = jsonResponse["name"].stringValue
                self.weatherImgView.image = UIImage(named: iconName)
                self.weatherLabel.text = jsonWeather["main"].stringValue
                self.temperatureLabel.text = "\(Int(round(jsonTemp["temp"].doubleValue)))"
                
                let date = Date()
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "EEEE"
                self.dayLabel.text = dateFormatter.string(from: date)
                
                let suffix = iconName.suffix(1)
                if(suffix == "n") {
                    self.setGreyGradientBackground()
                } else {
                    self.setBlueGradientBackground()
                }
            }
        }
        self.locationManager.stopUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
    
    func setBlueGradientBackground() {
        let topColor = UIColor(red: 95.0/255.0, green: 165.0/255.0, blue: 1.0, alpha: 1.0).cgColor
        let bottomColor = UIColor(red: 72.0/255.0, green: 114.0/255.0, blue: 184.0/255.0, alpha: 1.0).cgColor
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [topColor, bottomColor]
        
    }
    
    func setGreyGradientBackground() {
        let topColor = UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0).cgColor
        let bottomColor = UIColor(red: 72.0/255.0, green: 72.0/255.0, blue: 72.0/255.0, alpha: 1.0).cgColor
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [topColor, bottomColor]
    
    }


}

