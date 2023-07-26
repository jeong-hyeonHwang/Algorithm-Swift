//
//  7568.swift
//  Algorithm
//
//  Created by 황정현 on 2023/07/26.
//
//  https://www.acmicpc.net/problem/7568
//  BOJ SILVER5
//  No.7568
//  Name.덩치

import Foundation

var input = readLine()
var wArr: [Int] = []
var hArr: [Int] = []

if let length = Int(input ?? "0") {
    for _ in 0..<length {
        let temp = readLine()
        let inputs = temp?.components(separatedBy: " ")
        wArr.append(Int(inputs![0]) ?? 0)
        hArr.append(Int(inputs![1]) ?? 0)
    }
    
    var rank = 1
    var result: [Int] = []
    for i in 0..<length {
        rank = 1
        for j in 0..<length {
            if wArr[i] < wArr[j] && hArr[i] < hArr[j] {
                rank += 1
            }
        }
        
        result.append(rank)
    }
    
    for i in 0..<length {
        print(result[i], terminator: " ")
    }
}
