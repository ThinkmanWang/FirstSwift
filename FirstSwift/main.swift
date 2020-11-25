//
//  main.swift
//  FirstSwift
//
//  Created by 王晓丰 on 2020/11/24.
//

import Foundation
import Cocoa

func func1() {
    print("Hello, World123!")
}

func for_test() {
    for i in 0...5 {
        print("Step: \(i)")
    }
}

func for_by_step() {
    for i in stride(from: 0, to: 10, by: 1) {
        print("Step: \(i)")
    }
}

func for_by_step1() {
    for i in stride(from: 0, through: 10, by: 1) {
        print("Step: \(i)")
    }
}

func number_of_char(szInput: String) -> Int {
    if szInput == nil {
        return 0
    }
    
    var nSum:Int = 0
    for nAsc in szInput.unicodeScalars {
        print(nAsc)
        if (nAsc.value >= 65 && nAsc.value <= 90)
            || (nAsc.value >= 97 && nAsc.value <= 122) {
            nSum += 1
        }
    }
    
    return nSum
}

func bubble_sort(lstNums: [Int], bDesc: Bool) -> [Int] {
    var _lstNums = lstNums
    for i in stride(from: 0, to: _lstNums.count - 1, by: 1) {
        for j in stride(from: i + 1, to: _lstNums.count, by: 1) {
            if false == bDesc {
                if _lstNums[i] > _lstNums[j] {
                    var nTemp:Int = _lstNums[i]
                    _lstNums[i] = _lstNums[j]
                    _lstNums[j] = nTemp
                }
            } else {
                if _lstNums[i] < _lstNums[j] {
                    var nTemp:Int = _lstNums[i]
                    _lstNums[i] = _lstNums[j]
                    _lstNums[j] = nTemp
                }
            }
        }
    }
    
    return _lstNums
}

func bubble_sort_plus(lstNums: inout [Int], bDesc: Bool) {
    for i in stride(from: 0, to: lstNums.count - 1, by: 1) {
        for j in stride(from: i + 1, to: lstNums.count, by: 1) {
            if false == bDesc {
                if lstNums[i] > lstNums[j] {
                    var nTemp:Int = lstNums[i]
                    lstNums[i] = lstNums[j]
                    lstNums[j] = nTemp
                }
            } else {
                if lstNums[i] < lstNums[j] {
                    var nTemp:Int = lstNums[i]
                    lstNums[i] = lstNums[j]
                    lstNums[j] = nTemp
                }
            }
        }
    }
}


func dict_test() {
    var dictTest = [String:Int]()
    dictTest.updateValue(1, forKey: "One")
    dictTest.updateValue(2, forKey: "Two")
    dictTest.updateValue(3, forKey: "Three")
    
    for (szKey, nVal) in dictTest {
        print("\(szKey) ==> \(nVal)")
    }
}

func main() {
    var nA = 1
    var fB = 3.14
    var nC: Int
    let nD: Int
    nD = 4
    let nE = 5
    print( Double(nA) + fB)
    print("\(nA), \(nE)")
    print("nA + fB = \(Double(nA) + fB)")
    print("nD + nE = \(nD + nE)")
    print(nD)
    func1()
    for_test()
    for_by_step()
    for_by_step1()
    
    var nNumChar = number_of_char(szInput: "abc123")
    print("Number of char \(nNumChar)")
    
//    bubble sort
    var lstNums:[Int] = [1, 5, 7, 2, 3, 4, 10, 9]
    lstNums.append(6)
    lstNums.append(8)
    
    bubble_sort_plus(lstNums: &lstNums, bDesc: false)
    var szTxt:String = ""
    for nItem in lstNums {
        szTxt += String(format: "%d, ", arguments: [nItem])
    }
    print(szTxt)
    
    bubble_sort_plus(lstNums: &lstNums, bDesc: true)
    szTxt = ""
    for nItem in lstNums {
        szTxt += String(format: "%d, ", arguments: [nItem])
    }
    print(szTxt)
    
    dict_test()
}

main()
