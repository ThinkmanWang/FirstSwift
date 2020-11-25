//
//  Human.swift
//  FirstSwift
//
//  Created by 王晓丰 on 2020/11/25.
//

import Foundation

class Human {
    var m_nHeight: Int = 0
    var m_nWeight: Int = 0
    
    init(nHeight: Int, nWeight: Int) {
        self.m_nHeight = nHeight
        self.m_nWeight = nWeight
    }
    
    func toString() -> String {
        return String(format: "Height: %d, Weight: %d", arguments: [self.m_nHeight, self.m_nWeight])
    }
}
