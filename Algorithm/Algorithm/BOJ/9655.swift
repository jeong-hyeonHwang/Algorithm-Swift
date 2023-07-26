//
//  9655.swift
//  Algorithm
//
//  Created by 황정현 on 2023/07/26.
//
//  https://www.acmicpc.net/problem/9655
//  BOJ SILVER5
//  No.9655
//  Name.돌 게임

import Foundation

var input = readLine()
if let input = Int(input ?? "0") {
    if input % 2 == 0 {
        print("CY")
    } else {
        print("SK")
    }
}
