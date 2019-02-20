//
//  ViewController.swift
//  WeatherTable복습_12월5일
//
//  Created by 흠냐방구 on 05/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var datalist = [[String:String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let dict1 = ["국가":"아이슬란드", "날씨":"맑음"]
        let dict2 = ["국가":"중국", "날씨": "흐림"]
        let dict3 = ["국가":"한국", "날씨": "비"]
        let dict4 = ["국가":"일본", "날씨": "우박"]
        let dict5 = ["국가":"호주", "날씨": "눈"]
        let dict6 = ["국가":"태국", "날씨":"맑음"]
        let dict7 = ["국가":"미얀마", "날씨": "흐림"]
        let dict8 = ["국가":"스리랑카", "날씨": "비"]
        let dict9 = ["국가":"베트남", "날씨": "우박"]
        let dict10 = ["국가":"필리핀", "날씨": "눈"]
        let dict11 = ["국가":"러시아", "날씨":"맑음"]
        let dict12 = ["국가":"미국", "날씨": "흐림"]
        let dict13 = ["국가":"영국", "날씨": "비"]
        let dict14 = ["국가":"프랑스", "날씨": "우박"]
        let dict15 = ["국가":"벨기에", "날씨": "눈"]
        let dict16 = ["국가":"스위스", "날씨":"맑음"]
        let dict17 = ["국가":"오스트리아", "날씨": "흐림"]
        let dict18 = ["국가":"독일", "날씨": "비"]
        let dict19 = ["국가":"포르투갈", "날씨": "우박"]
        
        datalist = [dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14,dict15,dict16,dict17,dict18,dict19]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var dicTemp = datalist[indexPath.row]
        cell.textLabel!.text = dicTemp["국가"]
        let weatherStr = dicTemp["날씨"]
        cell.detailTextLabel?.text = weatherStr
        
        if weatherStr == "맑음" {
            cell.imageView!.image = UIImage(named: "sunny.png")
        } else if weatherStr == "흐림" {
            cell.imageView!.image = UIImage(named: "cloudy.png")
        } else if weatherStr == "비" {
            cell.imageView!.image = UIImage(named: "rainy.png")
        } else if weatherStr == "눈" {
            cell.imageView!.image = UIImage(named: "snow.png")
        } else {
            cell.imageView!.image = UIImage(named: "blizzard.png")
        }
        return cell
    }


}

