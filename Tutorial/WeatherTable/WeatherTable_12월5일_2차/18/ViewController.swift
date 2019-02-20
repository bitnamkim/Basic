//
//  ViewController.swift
//  18
//
//  Created by 흠냐방구 on 05/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

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
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // 한개의 스크롤이 차지하는 화면단에 안보이는 Cell은 dequeue에 들어감. 그래서 나중에 스크롤이 올라가거나 내려갈 때 재사용됨.
        // 이 때, withIdentifier에서 선언해준 이름을 TableViewCell의 Identifier와 동일하게 설정해줘야 Cell의 재사용이 일어남.
//        print("indexPath section: \(indexPath.section)")
//        print("indexPath row: \(indexPath.row)")
        var dicTemp = datalist[indexPath.row]
        // 임시변수 만들어줘서 그 안에 위에서 만든 딕셔너리 데이터를 넣어주는거임
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

