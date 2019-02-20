//
//  AppDelegate.swift
//  AppLifeCycle
//
//  Created by 흠냐방구 on 15/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // 이벤트에 반응하기 위해 UIResponder 라는 클래스를 상속받음.
    // UIApplicationDelegate를 준수하고 있음.
    // 밑에 있는 메써드들은 Delegate 메써드들임. 상황에 의해 알맞게 생성됨.

    var window: UIWindow?
    
//    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        print("willFinishLaunchingWithOptions")
//        return true
// 이건 잘 사용 안한다고 함. didFinishLaunchingWithOptions 비슷한 메써드임.
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
        // didFinishLaunchingWithOptions 이 코드는 Final initialization 해주는 부분임.
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("didFinishLaunchingWithOptions")
        // 바로 이 자리에 초기화 코드 써주기. 이 메써드는 앱을 전환해도 한번밖에 호출이 안되기 때문에 이 메써드에다가 초기화를 해줘야함.
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
        // 비활성화 만드는 코드
        // 백그라운드 상태에서 문자가 올 때 잠간 동작 멈추는 이벤트가 여기에 해당됨.
        
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
        // 백그라운드로 넘어오는 코드
        
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
        // 앞쪽 그라운드로 넘어오는 코드
        
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }




