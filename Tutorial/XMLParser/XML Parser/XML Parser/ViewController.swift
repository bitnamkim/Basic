//
//  ViewController.swift
//  XML Parser
//
//  Created by 흠냐방구 on 01/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, XMLParserDelegate {
    var datalist = [[String:String]]()
    var detaildata = [String:String]()
    var elementTemp:String = ""
    var blank:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"
        guard let baseURL = URL(string: urlString) else {
            print("URL error")
            return
        }
        guard let parser = XMLParser(contentsOf: baseURL) else {
            print("Can't read data")
            return
        }
        parser.delegate = self
        if !parser.parse(){
            print("Parser failure")
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        elementTemp = elementName
        // 밑에 있는 메써드에서 elementName을 사용할 수 있게 하기 위해서 선언해준거임.
        blank = true
        print("start \(elementName)")
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if blank == true && elementTemp != "weatherinfo" && elementTemp != "local" {
        detaildata[elementTemp] = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        // detaildata에 elementTemp를 key 값으로, string을 value 값으로 딕셔너리에 넣어줄거임.
        // whitespace랑 Newline 같은 것들을 제거해주고 값만 깔끔하게 넣어주는 코드임
        // weatherinfo랑 local을 제외하고 3개의 element 값들만 넣으라는 코드임.
            
        }
        print("string : \(string)")
        print("detaildata : \(detaildata)")
        // XML Parser는 조건에 맞는 value 값 넣어주고 element가 끝나는 부분에 있는 string도 값으로 넣어줌. 그래서 value가 값으로 들어갔다가 그 자리에 string이 들어가서 초기화 되고, value가 값으로 들어갔다가 그 자리에 string이 들어가고를 반복하는거임. 이걸 없애기 위해서 blank 객체를 사용해야함.
        // blank를 true, false 값으로 설정해서 조건문에 맞게 값을 넣어주는거임.
        // 처음 parser를 시작할때는 true라서 국가, 날씨, 온도가 값으로 들어감. 그러다가 didEndElement 만나면 blank가 false로 바뀜. false로 바뀌면 foundCharacter랑 조건이 맞지 않으므로 값을 안 넣어줌. 그 다음에는 didStartElement로 넘어감. 계속 이 과정 반복!
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "local" {
            datalist += [detaildata]
        }   // local이 끝나면 하나의 딕셔너리가 완성된거임. 이 때, 완성된 하나의 딕셔너리를 datalist 라는 배열에 넣어줄거임.
        blank = false
        print("end : \(elementName)")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"Cell", for: indexPath) as! WeatherCell
        
        var dicTemp = datalist[indexPath.row]
        cell.countryLabel.text = dicTemp["country"]
        let weatherStr = dicTemp["weather"]
        cell.weatherLabel.text = weatherStr
        cell.temperatureLabel.text = dicTemp["temperature"]
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

