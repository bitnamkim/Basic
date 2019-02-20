//
//  ViewController.swift
//  CustomCell02
//
//  Created by 흠냐방구 on 27/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit
// 프로젝트 테마 : TableViewCell을 커스텀 하는 거임
// Master Detail App으로 만들면 템플릿이 다 완성되어 있어서 편하지만, 우리는 Single View App으로 템플릿을 만들어 볼거임.
// Navigation Controller -> Drill-Down 기능을 가능하게 해줌. 앱 페이지를 클릭하면 하위 페이지로 가는데 옆으로 움직여서 파고 들어가는 기능을 Drill Down이라고 함. 클릭하면 페이지가 아래로 떨어지는 기능은 Drop Down 이라고 함.
// Navigation Controller는 Root ViewController가 메인임. Root ViewController가 메인으로 있고 그 밑으로 기능이 붙음.
// TableView를 상속받은 Cocoa Touch 파일을 만들어서 TableVeiwCell 이랑 연결시킬거임. 이렇게 해야지 TableViewCell 커스터 마이징이 가능해짐.
// NavigationController랑 RootViewController가 메인임. 나머지 ViewController들은 RootViewController 밑으로 붙음.
// NavigationController에서 RootViewController 연결할 때에는, Relationship Segue 'root view controller'로 연결하기
// RootViewController에서 하위 ViewController를 연결할 때에는, Manual Segue 'show' 로 연결하기.
// RootViewController에 Background 이미지 뷰를 넣고 TableView를 투명 처리하면, Background에 들어간 이미지가 보임. 나중에 코드로 해줄거임.
class ViewController: UIViewController, UITableViewDataSource {
    // 클래스를 상속 받아서 기능을 쓸 수 있게 한거임!
    @IBOutlet weak var tableView: UITableView!
    var itemlist = [[String:String]]()
    // 배열 안에다가 딕셔너리를 넣어주고 초기화!

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
        // 형변환 해주는 거임. 이거 해줘야 label이 인텔리센스 키에 잡힘.
        // as! CustomCell 이런 형변환을 해줘야 cell.nameLabel. 이런 속성들을 쓸 수 있음. Cell을 CustomCell로 형변환 해서 사용한다는 코드임.
        let dicTemp = itemlist[indexPath.row]
        cell.nameLabel.text = dicTemp["name"]
        cell.amountLabel.text = dicTemp["amount"]
        cell.valueLabel.text = dicTemp["value"]
        cell.imgView.image = UIImage(named: dicTemp["image"]!)
        // 이미지 넣는 코드 형태 잘 파악할 것.
        
        cell.backgroundColor = UIColor.clear
        // TableView 배경화면 투명하게 해주는거. 이 코드 써주고 Main 스토리보드 가서 TableView 백그라운드 없음으로 해줘야함.
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 세그웨이가 작동되기 전에 미리 실행되는 콜백 메써드 같은거임. 세그웨이가 눌려서 화면이 전환될 때 실행되는 메써드.
        if segue.identifier == "showDetail" {
            (segue.destination as! DetailViewController).detaildata = itemlist[tableView.indexPathForSelectedRow!.row]
            //itemlist[tableView.indexPathForSelectedRow!.row]

            // 목적지에서 사용될 메써드로 가는걸 형변환 해서 detaildata에 값을 넣어주는거임.
            // 배열에 있는 선택된 딕셔너리 값을 넣어주면 됨. 테이블뷰에 현재 선택되어 있는 인덱스 번호를 배열이랑 매칭해서 콜하면 됨.
        }
    }


}

