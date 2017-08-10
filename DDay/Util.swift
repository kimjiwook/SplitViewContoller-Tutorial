//
//  Util.swift
//  masterDetail
//
//  Created by kimjiwook on 2017. 7. 28..
//  Copyright © 2017년 kimjiwook. All rights reserved.
//

import UIKit

class Util: NSObject {
    /// 생성자
    ///
    /// - Returns:
    class func sharedInstance() -> Util {
        var util:Util? = nil
        
        if util == nil {
            util = Util.init()
        }
        return util!;
    }
    
    // MARK: -
    // MARK: - 디렉토리 만들기
    /// 캐시 폴더 디렉토리 만들어주기.
    /// - Parameter folderName:
    /// - Returns:
    func getFolderPath(folderName:String) -> String {
        let paths:NSArray = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true) as NSArray
        let docPath:String = paths.firstObject as! String
        return "\(docPath)/\(folderName)"
    }
}
