//
//  ViewController.swift
//  WeatherTable_12월5일
//
//  Created by 흠냐방구 on 05/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//


import UIKit
// TableViewController -> View가 없고 바로 TableView가 있음. 그냥 TableView만 사용할거면 TableViewController가 편함. 다른 객체 올리지 못하고 그냥 TableView만 사용할 수 있는거임.
// ViewController 위에 TableView, TableViewCell 올린거 -> View 위에 TableView가 있음. View위에 다른 객체들을 추가로 올릴 수 있어서 커스터마이징 할 수 있음.
// TableView는 Row로 구성되어 있음. 한 칸 한 칸을 Row라고 하는데, Row는 Cell로 구성되어 있음. Cell이 Row보다 작은 개념임. Cell는 UITableViewCell이라는 객체로 구성되어 있음.
// Section : 조건에 맞는 데이터들이 나오는 화면단의 단위. 전화번호부 어플 같은 경우에는 ㄱ 세션, ㄴ 세션, ㄷ 세션 이렇게 있음. 지금 예제에 나온 어플들은 section이 1개임. 그리고 numberOfRowInSection의 디폴트 값으로 1을 줌.

class ViewController: UIViewController, UITableViewDataSource {
    
    var datalist = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dict1 = ["지역":"한국","날씨":"비"]
        let dict2 = ["지역":"일본","날씨":"흐림"]
        let dict3 = ["지역":"중국","날씨":"눈"]
        let dict4 = ["지역":"영국","날씨":"우박"]
        let dict5 = ["지역":"미얀마","날씨":"맑음"]
        let dict6 = ["지역":"홍콩","날씨":"비"]
        let dict7 = ["지역":"대만","날씨":"흐림"]
        let dict8 = ["지역":"베트남","날씨":"눈"]
        let dict9 = ["지역":"소련","날씨":"우박"]
        let dict10 = ["지역":"러시아","날씨":"맑음"]
        let dict11 = ["지역":"몽골","날씨":"비"]
        let dict12 = ["지역":"브라질","날씨":"흐림"]
        let dict13 = ["지역":"볼리비아","날씨":"눈"]
        let dict14 = ["지역":"아르헨티나","날씨":"우박"]
        let dict15 = ["지역":"콩고","날씨":"맑음"]
        let dict16 = ["지역":"멕시코","날씨":"비"]
        let dict17 = ["지역":"미국","날씨":"흐림"]
        let dict18 = ["지역":"칠레","날씨":"눈"]
        let dict19 = ["지역":"페루","날씨":"우박"]
        
        datalist = [dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14,dict15,dict16,dict17,dict18,dict19]
        // datalist에 딕셔너리를 넣어주는 거임.
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
        // 스토리 보드에서 Delegate(사용안하긴함), DataSourceProtocol 두 개 self로 연결해줘야 작동함.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // 한개의 스크롤이 차지하는 화면단에 안보이는 Cell은 dequeue에 들어감. 그래서 나중에 스크롤이 올라가거나 내려갈 때 재사용됨.
        // 이 때, withIdentifier에서 선언해준 이름을 TableViewCell의 Identifier와 동일하게 설정해줘야 Cell의 재사용이 일어남.
        // 스토리 보드 가서 identifier를 Cell로 해줘야 작동함.
        // Master Detail 템플릿으로 만들면 위 코드는 디폴트로 들어가있음.
        // 딕셔너리의 값을 Cell에게 줘서 Cell 값을 콜해줘서 데이터를 입력해주는거임.
        // 스토리 보드에서 Delegate(사용안하긴함), DataSourceProtocol 두 개 self로 연결해줘야 작동함.
//        print("indexPath section: \(indexPath.section)")
//        print("indexPath row: \(indexPath.row)")
        
        var dicTemp = datalist[indexPath.row]
        // cellForRowAt 메써드를 통해서 row들에 값을 하나씩 넣어주는거임.
        // 임시변수 만들어줘서 그 안에 위에서 만든 딕셔너리 데이터를 넣어주는거임.
        cell.textLabel!.text = dicTemp["지역"]
        var weatherStr = dicTemp["날씨"]
        cell.detailTextLabel!.text = weatherStr
        
        if weatherStr == "맑음"{
            cell.imageView!.image = UIImage(named: "sunny.png")
        } else if weatherStr == "흐림" {
            cell.imageView!.image = UIImage(named: "cloudy.png")
        } else if weatherStr == "눈" {
            cell.imageView!.image = UIImage(named: "snow.png")
        } else if weatherStr == "비" {
            cell.imageView!.image = UIImage(named: "rainy.png")
        } else {
            cell.imageView!.image = UIImage(named: "blizzard.png")
        }
        
        return cell
        
    }
    


}

