//
//  ViewController.swift
//  WeatherTable_12월20일
//
//  Created by 흠냐방구 on 20/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // UITableViewDataSource는 무조건 required 메써드 2개
    // UITableViewDelegate는 무조건 required 메써드 1개
    // 테이블 뷰는 Static, Dynamic 2가지가 있음.
    // Static은 말 그대로 정적인 테이블 뷰. 스토리보드에 형태랑 내용을 입력하면 일정한 값만 출력함.
    // Dynamic은 데이터를 입력 받아서 형태와 내용이 변하는 동적인 테이블. ex) 아이폰 설정화면은 Static한 테이블 뷰, 페이스북의 Feed들은 Dynamic한 테이블 뷰.
    @IBOutlet weak var tableView: UITableView!
    

    var dataList = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        let data1 = ["국가":"일본", "날씨":"맑음"]
        let data2 = ["국가":"중국", "날씨":"흐림"]
        let data3 = ["국가":"미국", "날씨":"비"]
        let data4 = ["국가":"미얀마", "날씨":"우박"]
        let data5 = ["국가":"홍콩", "날씨":"눈"]
        let data6 = ["국가":"태국", "날씨":"눈"]
        let data7 = ["국가":"캐나다", "날씨":"맑음"]
        let data8 = ["국가":"러시아", "날씨":"흐림"]
        let data9 = ["국가":"소련", "날씨":"비"]
        let data10 = ["국가":"영국", "날씨":"우박"]
        let data11 = ["국가":"프랑스", "날씨":"눈"]
        let data12 = ["국가":"브라질", "날씨":"맑음"]
        let data13 = ["국가":"케냐", "날씨":"흐림"]
        let data14 = ["국가":"볼리비아", "날씨":"비"]
        let data15 = ["국가":"아르헨티나", "날씨":"우박"]
        
        dataList = [data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        var dicTemp = dataList[indexPath.row]
        
        cell.textLabel!.text = dicTemp["국가"]
        var weatherStr = dicTemp["날씨"]
        cell.detailTextLabel?.text = weatherStr
        
        if weatherStr == "맑음" {
            cell.imageView?.image = UIImage(named:"sunny.png")
        } else if weatherStr == "흐림" {
            cell.imageView?.image = UIImage(named:"cloudy.png")
        } else if weatherStr == "비" {
            cell.imageView?.image = UIImage(named:"rainy.png")
        } else if weatherStr == "눈" {
            cell.imageView?.image = UIImage(named:"snow.png")
        } else {
            cell.imageView?.image = UIImage(named:"blizzard.png")
        }
        
        return cell
    }
    


}

