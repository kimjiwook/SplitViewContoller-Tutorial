//
//  DetailViewController.swift
//  DDay
//
//  Created by kimjiwook on 2017. 7. 28..
//  Copyright © 2017년 kimjiwook. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // 부모로 사용되는 SplitView
    var splitView:SplitViewController?
    
    @IBOutlet weak var detailText: UILabel!
    // MARK: - #. 기초 정의
    /// #. 기초 데이터 정의
    private func initData() {
        // 1. 네비게이션 셋팅
        self.setNavigationItems()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: - #. 네비게이션 만들기
    private func setNavigationItems() {
        self.title = "상세화면"
    }
    
    //MARK: - #. 외부에서 들어오는 데이터 셋
    public func loadData(_ dic:NSDictionary) {
        self.title = dic["name"] as? String ?? "상세화면"
        self.detailText.text = dic["date"] as? String ?? "상세화면 입니다."
        
    }
    

}
