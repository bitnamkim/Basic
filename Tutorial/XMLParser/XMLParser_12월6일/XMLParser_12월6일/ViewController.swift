//
//  ViewController.swift
//  XMLParser_12월6일
//
//  Created by 흠냐방구 on 06/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, XMLParserDelegate {
    
    var datalist = [[String:String]]()
    // 배열 안에 딕셔너리 형태로 만들면 사용하기 편함.
    // element를 key값으로 쓸거임. 코딩 여러번 하지 않을려고!
    var detaildata = [String:String]()
    var elementTemp:String = ""
    var blank:Bool = false
    
    
    // 파싱 할려면 자료구조 있어야함
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"
        // parser 초기화 해주기 위해서 url 주소를 변수로 만들었음.
        guard let baseURL = URL(string: urlString) else {
            print("URL error")
            return
            // baseURL에 urlString을 담은거임.
            // 값이 오류나면 그냥 리턴해주라는 코드.
        }
        guard let parser = XMLParser(contentsOf: baseURL) else {
            print("Can't read data")
            return
            // parser 초기화 해주는 코드
        }
        parser.delegate = self
        // parser의 delegate를 셀프로 준거임
        if !parser.parse(){
            // parser() 해줘야 파싱이 시작됨.
            print("Parse failure")
        }
    
        // 항상 값이 참일 때 guard statement 사용할 것. else 코드를 꼭 써줘야함. 교과서에 자세한 내용 있음.
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        elementTemp = elementName
        blank = true
        // 밑에 string 받는 곳에서 쓸 수 있게 이렇게 선언해준거임.
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if blank == true && elementTemp != "local" && elementTemp != "weatherinfo" {
            // 이 조건을 통해서 country, weather, temperature 3가지만 데이터에 들어가게됨.
            detaildata[elementTemp] = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
            
        }
        // elementTemp가 key, String이 Value 값임. elementName(=elementTemp)을 value에 값을 하나씩 넣어주는 거임.
        // string 끝에 character, whitespace가 있을수도 있어서 trimming 이걸로 짤라서 깔끔하게 넣어준다는 코드임.
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        blank = false
        // blank가 false 라서 맨 끝에 있는 값을 넣어주지 못함(조건이 성립하지 않으므로).
        if elementName == "local" {
            datalist += [detaildata]
            // detaildata는 딕셔너리이고 datalist는 배열임. 조건에 맞는 배열들을 딕셔너리안에다가 계속 쌓아주는거임.
            // 한 딕셔너리가 완성되어서 배열에 들어가는거임.
        }
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WeatherTableViewCell
        var dicTemp = datalist[indexPath.row]
        cell.countryLabel.text = dicTemp["country"]
        cell.temperatureLabel.text = dicTemp["temperature"]
        let weatherStr = dicTemp["weather"]
        cell.weatherLabel.text = weatherStr
        
        if weatherStr == "맑음" {
            cell.imgView.image = UIImage(named: "sunny.png")
        } else if weatherStr == "흐림" {
            cell.imgView.image = UIImage(named: "cloudy.png")
        } else if weatherStr == "비" {
            cell.imgView.image = UIImage(named: "rainy.png")
        } else if weatherStr == "눈" {
            cell.imgView.image = UIImage(named: "snow.png")
        } else {
            cell.imgView.image = UIImage(named: "blizzard.png")
        }
        return cell
    }
    


}

