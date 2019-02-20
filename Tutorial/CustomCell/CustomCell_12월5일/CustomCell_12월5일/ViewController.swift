//
//  ViewController.swift
//  CustomCell_12월5일
//
//  Created by 흠냐방구 on 05/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit
// NavigationController랑 RootViewController가 메인임. 나머지 ViewController들은 RootViewController 밑으로 붙음.
// NavigationController에서 RootViewController 연결할 때에는, Relationship Segue 'root view controller'로 연결하기
// RootViewController에서 하위 ViewController를 연결할 때에는, Manual Segue 'show' 로 연결하기.
// RootViewController에 Background 이미지 뷰를 넣고 TableView를 투명 처리하면, Background에 들어간 이미지가 보임. 나중에 코드로 해줄거임.
class ViewController: UIViewController, UITableViewDataSource {
    
    var itemlist = [[String:String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let item1 = ["name":"사과","image":"apple.jpeg","amount":"6","value":"3000원"]
        let item2 = ["name":"블루베리","image":"blueberry.jpg","amount":"10","value":"30000원"]
        let item3 = ["name":"당근","image":"carrot.jpg","amount":"13","value":"5000원"]
        let item4 = ["name":"체리","image":"cherry.png","amount":"1","value":"2000원"]
        let item5 = ["name":"포도","image":"grape.jpg","amount":"13","value":"1000원"]
        let item6 = ["name":"키위","image":"kiwi.png","amount":"2","value":"15000원"]
        let item7 = ["name":"레몬","image":"lemon.png","amount":"3","value":"6000원"]
        let item8 = ["name":"라임","image":"lime.jpg","amount":"4","value":"4000원"]
        let item9 = ["name":"고기","image":"meat.jpg","amount":"5","value":"2000원"]
        let item10 = ["name":"딸기","image":"strawberry.jpg","amount":"7","value":"8000원"]
        let item11 = ["name":"토마토","image":"tomato.jpg","amount":"30","value":"3000원"]
        let item12 = ["name":"야채","image":"vegetable.jpg","amount":"40","value":"7000원"]
        let item13 = ["name":"멜론","image":"watermelon.png","amount":"5","value":"10000원"]
        
        itemlist = [item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        // as! CustomCell 이런 형변환을 해줘야 cell.nameLabel. 이런 속성들을 쓸 수 있음. Cell을 CustomCell로 형변환 해서 사용한다는 코드임.
        let dicTemp = itemlist[indexPath.row]
        cell.nameLabel.text = dicTemp["name"]
        cell.amountLabel.text = dicTemp["amount"]
        cell.valueLabel.text = dicTemp["value"]
        
        cell.imgView.image = UIImage(named: dicTemp["image"]!)
        // 이미지 넣는 코드 형태 잘 파악할 것.
        
        return cell
    }


}

