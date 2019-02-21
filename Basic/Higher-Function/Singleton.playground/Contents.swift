import UIKit

struct Settings {
    static let shared = Settings()
    var username:String?
    
    private init() {}
}
Settings.shared
// static은 프로퍼티로 가질 수 있음. 인스턴스 안 만들고!


class LocationManager{
    
    static let shared = LocationManager()
    
    var locationGranted: Bool?
    //Initializer access level change now
    private init() {}
    
    func requestForLocation(){
        //Code Process
        locationGranted = true
        print("Location granted")
    }
}
//Access class function in a single line
LocationManager.shared.requestForLocation()
LocationManager.shared.requestForLocation()
print(LocationManager.shared.locationGranted)
// let haha = LocationManager()  -> private으로 생성자를 만들어 놔서, 외부에서 인스턴스 생성 안됨.



UserDefaults.standard
FileManager.default
// UserDefaults.standard , FileManager.default 이런 것들도 싱글톤 패턴임.


