//
//  ViewController.swift
//  XML Parser
//
//  Created by 흠냐방구 on 01/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

struct Weather:Decodable{
    let country:String
    let weather:String
    let temperature:String
    // JSON 데이터 형식을 받아오는 구조체를 만들어서 담아주기
}
class ViewController: UIViewController, UITableViewDataSource {
    
    var datalist = [Weather]()
    // 만든 구조체를 배열에 담아줄거임.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let jsonURLString = "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/swift4weather.json"
        guard let jsonURL = URL(string: jsonURLString) else {return}
        URLSession.shared.dataTask(with: jsonURL, completionHandler: {(data, response, error) -> Void in
            guard let data = data else{return}
            // 데이터를 받아서 상수에 넣을거임. 데이터가 없으면 안되니까 else 뒤에 return 써준거임.
            
            do {
                self.datalist = try JSONDecoder().decode([Weather].self, from: data)
                // .뒤에 self 붙이는건 클래스의 인스턴스로 넘겨주는게 아니라 타입을 넘겨주는거임.
                
            } catch {
                print("Parsing error \(error)")
            
            // 통신을 하다보면 에러가 나는 경우가 많아서 'do-catch'문을 사용함.
            }
        }).resume()
        // .resume 해줘야 파싱을 시작함
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"Cell", for: indexPath) as! WeatherCell
        
        var structTemp = datalist[indexPath.row]
        
        cell.countryLabel.text = structTemp.country
        // 딕셔너리는 ["값"] 이렇게 접근하지만 structure는 .country 이렇게 접근함.
        let weatherStr = structTemp["weather"]
        
        cell.weatherLabel.text = weatherStr
        cell.temperatureLabel.text = structTemp["temperature"]
        
        if weatherStr == "맑음" {
            cell.imgView.image = UIImage(named: "sunny.png")
        } else if weatherStr == "비" {
            cell.imgView.image = UIImage(named: "rainy.png")
        } else if weatherStr == "흐림" {
            cell.imgView.image = UIImage(named: "cloudy.png")
        } else if weatherStr == "눈" {
            cell.imgView.image = UIImage(named: "snow.png")
        } else {
            cell.imgView.image = UIImage(named: "blizzard.png")
        }
        return cell


}
}

