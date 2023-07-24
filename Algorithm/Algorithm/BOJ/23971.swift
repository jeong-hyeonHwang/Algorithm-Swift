//
//  main.swift
//  Algorithm
//
//  Created by 황정현 on 2023/07/24.
//
//  https://www.acmicpc.net/problem/23971
//  BOJ BRONZE3
//  No.23971
//  Name.ZOAC4

import Foundation

var input = readLine()

if let input = input {
    let inputs = input.components(separatedBy: " ")
    
    let H: Int = Int(inputs[0]) ?? 0
    let W: Int = Int(inputs[1]) ?? 0
    let N: Int = Int(inputs[2]) ?? 0
    let M: Int = Int(inputs[3]) ?? 0
    
    var w: Int = 1
    var h: Int = 1
    var count: Int = 1
    
    while (true) {
        if (w + M + 1 > W) {
            w = 1;
            h += N + 1;
        } else {
            w += M + 1;
        }
        
        if (h <= H) {
            count += 1;
        } else {
            break;
        }
    }
    
    print(count)
}
