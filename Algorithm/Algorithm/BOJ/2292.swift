//
//  main.swift
//  Algorithm
//
//  Created by 황정현 on 2023/07/24.
//
//  https://www.acmicpc.net/problem/2292
//  BOJ BRONZE2
//  No.2292
//  Name.벌집

import Foundation

var input = readLine()

if let input = input {
    let N = Int(input) ?? 0
    
    var currentMin: CLongLong = 1
    var currentMax: CLongLong = 1
    var mulVal: Int = 1
    
    var result: Int = 1
    
    while(true) {
        if N >= currentMin && N <= currentMax {
            break
        }
        currentMin = currentMax + 1
        currentMax = Int64(6 * mulVal) + currentMin - 1
        result += 1
        mulVal += 1
    }
    
    print(result)
}
