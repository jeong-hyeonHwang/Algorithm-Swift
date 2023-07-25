//
//  1157.swift
//  Algorithm
//
//  Created by 황정현 on 2023/07/25.
//
//  https://www.acmicpc.net/problem/1157
//  BOJ BRONZE1
//  No.1157
//  Name.단어 공부

import Foundation

var input = readLine()

if let input = input {
    let length = 26
    var alphabetCount = [Int](repeating: 0, count: length)
    
    var minusVal: Int = 0
    for alphabet in input {
        let temp: Int = Int(UnicodeScalar("\(alphabet)")!.value)
        
        if alphabet >= "a" {
            minusVal = Int(UnicodeScalar("a").value)
        } else {
            minusVal = Int(UnicodeScalar("A").value)
        }
        
        alphabetCount[temp - minusVal] += 1
    }
    
    var flag: Bool = true
    var maxIdx: Int = 0
    var maxCount: Int = -1
    for idx in 0..<length {
        if alphabetCount[idx] > maxCount {
            maxCount = alphabetCount[idx]
            maxIdx = idx
            flag = true
        } else if maxCount != 0 && alphabetCount[idx] == maxCount {
            flag = false
        }
    }
    
    if flag {
        let ch = maxIdx + Int(UnicodeScalar("A").value)
        print(String(UnicodeScalar(ch)!))
    } else {
        print("?")
    }
}
