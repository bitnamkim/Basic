//
//  AppDelegate.swift
//  AppDelegate_12월13일
//
//  Created by 흠냐방구 on 13/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("didFinishLaunchingWithOptions")
        // 여기에 초기화 해주는 코드 써줌. 앱이 실행될 때 사용하는 초기세팅값을 여기에 할당해줌.
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
        // 앱을 비활성화 시키는 코드
        
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
        // 백그라운드로 넘어가는 코드. 앱 실행하고 있다가 홈버튼 눌러서 바탕화면으로 넘어가는게 백그라운드로 넘어가는거임.
        
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
        // Fore 그라운드로 넘어오는 코드
        
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
        // 활성화 되는 코드.
        
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
        // 앱 종료시키는 코드. 앱이 맨 처음에 실행되었을때 홈버튼 2번 눌러서 종료시키면 코드가 실행됨.
        // 이건 잘 안씀. 그냥 DidEnterBackground에 하는게 좋다고 함.
        
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

