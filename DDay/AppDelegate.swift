//
//  AppDelegate.swift
//  DDay
//
//  Created by kimjiwook on 2017. 7. 28..
//  Copyright © 2017년 kimjiwook. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        // 스플릿 뷰를 직접 생성해서 Class 선언 후에 직접 넣어주는 방법이 관리차원에서 좋아보임..
        let splitView:SplitViewController = SplitViewController()
        let root:MainViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let detail:DetailViewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        let rootNavi:UINavigationController = UINavigationController.init(rootViewController: root)
        let detailNavi:UINavigationController = UINavigationController.init(rootViewController: detail)

        // 기본셋팅
        splitView.viewControllers = [rootNavi,detailNavi]
        splitView.root = root
        splitView.detail = detail
        
        // 각 뷰컨트롤러에 스플릿뷰 넣어주기.
        root.splitView = splitView
        detail.splitView = splitView
        
        
        window?.rootViewController = splitView
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

