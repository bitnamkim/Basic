//
//  ViewController.swift
//  WeatherTable
//
//  Created by 흠냐방구 on 27/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    // Protocol을 선언해주면 Required 메써드를 무조건 써줘야함. 문서에서 Required 메써드 확인해서 사용할것.
    var dataList = [[String:String]]()
    
    // 배열 안에 딕셔너리를 넣어줄꺼임. key값, value값이 string인 딕셔너리
    override func viewDidLoad() {
        super.viewDidLoad()
        let dict1 = ["지역":"한국", "날씨":"맑음"]
        let dict2 = ["지역":"일본", "날씨":"흐림"]
        let dict3 = ["지역":"중국", "날씨":"비"]
        let dict4 = ["지역":"스페인", "날씨":"눈"]
        let dict5 = ["지역":"미국", "날씨":"우박"]
        let dict6 = ["지역":"영국", "날씨":"맑음"]
        let dict7 = ["지역":"프랑스", "날씨":"흐림"]
        let dict8 = ["지역":"브라질", "날씨":"비"]
        let dict9 = ["지역":"스위스", "날씨":"눈"]
        let dict10 = ["지역":"덴마크", "날씨":"우박"]
        let dict11 = ["지역":"스웨덴", "날씨":"맑음"]
        let dict12 = ["지역":"네덜란드", "날씨":"흐림"]
        let dict13 = ["지역":"크로아티아", "날씨":"비"]
        let dict14 = ["지역":"독일", "날씨":"눈"]
        let dict15 = ["지역":"필리핀", "날씨":"우박"]
        let dict16 = ["지역":"헝가리", "날씨":"맑음"]
        let dict17 = ["지역":"이탈리아", "날씨":"흐림"]
        let dict18 = ["지역":"벨기에", "날씨":"비"]
        let dict19 = ["지역":"핀란드", "날씨":"눈"]
        
        dataList = [dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14,dict15,dict16,dict17,dict18,dict19]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // indexPath라는 하나의 구조체에서 값을 처리해주고 있음.
//        print("indexPath section : \(indexPath.section)")
//        print("indexPath row : \(indexPath.row)")
        var dicTemp = dataList[indexPath.row]
        cell.textLabel!.text = dicTemp["지역"]
        cell.detailTextLabel!.text = dicTemp["날씨"]
        
        return cell
    }   // 배열 안에 있는 딕셔너리 값들을 Cell에다가 리턴해줘서 Row 하나하나에 꽂아주는거임.
        // Row 안에는 Cell이 들어있음.

}

