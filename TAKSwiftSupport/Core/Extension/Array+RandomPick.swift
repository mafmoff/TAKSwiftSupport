//
//  Array+RandomPick.swift
//  TAKSwiftSupport
//
//  Created by yamamotosaika on 2015/12/24.
//  Copyright © 2015年 TakuNishimura. All rights reserved.
//

import UIKit

public extension Array {

    /**
     指定された個数分、重複なしで元の配列から要素を取り出し、配列を再生成
     
     - parameter number: 取り出す個数
     
     - returns: 配列
     */
    func randomPick(itemNum itemNum: Int) -> [Any] {
        if count <= 0 {
            return []
        }
        // 元配列
        var origin = self
        // 生成配列
        var array: [Any] = []
        
        for _ in 0...itemNum {
            let index = Int(arc4random_uniform(UInt32(count)))
            array.append(origin[index])
            origin.removeAtIndex(index)
        }
        return array
    }
}
