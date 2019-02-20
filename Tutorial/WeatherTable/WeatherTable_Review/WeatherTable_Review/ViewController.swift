//
//  ViewController.swift
//  WeatherTable_Review
//
//  Created by 흠냐방구 on 01/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

// 메인 스토리 보드에서 Cell 스타일을 Subtitle로 바꿔줘야함.
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
        // dequeueResuableCell 이 프로퍼티는 나중에 마스터디테일이라는 템플릿 사용하면 자동으로 생성됨. 근데 지금은 원리를 알아야 하니까 하드코딩 해주는거임.
        // 딕셔너리에 있는 cell 값을 추출해서 Row에 하나하나 cell 값을 리턴해주는 메써드임.
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // 스토리보드에 있는 Table View Cell이랑 withIdentifier랑 깔맞춤 해줘야함. 똑같이 이름 써줘야함. 그래야 컴파일 오류가 안남.
        var dicTemp = datalist[indexPath.row]
        // indexPath라는 하나의 구조체에서 다 값을 처리하고 있음. indexPath에서 Row에다가 값을 하나씩 넣어주는 코드.
        // 이거 해주고 Delegate 연결해줘야 컴파일 됨.
        // print("indexPath section : \(indexPath.section)")
        // print("indexPath row : \(indexPath.row)")
        cell.textLabel!.text = dicTemp["국가"]
        let weatherstr = dicTemp["날씨"]
        cell.detailTextLabel?.text = weatherstr
        // dicTemp에서 국가에 해당하는 텍스트들을 뽑아서 Cell에다가 값을 넣을거임.
        if weatherstr == "맑음" {
            cell.imageView!.image = UIImage(named: "sunny.png")
        } else if weatherstr == "비" {
            cell.imageView!.image = UIImage(named: "rainy.png")
        } else if weatherstr == "흐림" {
            cell.imageView!.image = UIImage(named: "cloudy.png")
        } else if weatherstr == "눈" {
            cell.imageView!.image = UIImage(named: "snow.png")
        } else {
            cell.imageView?.image = UIImage(named: "blizzard.png")
        }
        return cell
        
    }

    
}

