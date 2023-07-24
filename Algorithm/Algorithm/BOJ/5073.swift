//
//  5073.swift
//  Algorithm
//
//  Created by 황정현 on 2023/07/24.
//
//  https://www.acmicpc.net/problem/5073
//  BOJ BRONZE3
//  No.5073
//  Name.삼각형과 세 변

import Foundation

func conditionCheck(_ numbers: [Int]) -> Bool {
    var flag: Bool = true
    numbers.forEach { number in
        if number == 0 {
            flag = false
        }
    }
    return flag
}

func availabilityCheck(_ numbers: [Int]) -> Bool {
    
    let a = numbers[0]
    let b = numbers[1]
    let c = numbers[2]
    
    var tempMax = 0;
    tempMax = max(a, b)
    tempMax = max(tempMax, c)
    
    if tempMax == a {
        return a < b + c
    } else if tempMax == b {
        return b < a + c
    } else {
        return c < a + b
    }
}

var whileFlag: Bool = true
while(whileFlag) {
    let input = readLine()
    if let inputs = input?.components(separatedBy: " ") {
        let numbers: [Int] = inputs.map { Int($0) ?? 0 }
        let a = numbers[0]
        let b = numbers[1]
        let c = numbers[2]
        if conditionCheck(numbers) {
            if availabilityCheck(numbers) == false {
                print("Invalid")
            } else if a == b && b == c {
                print("Equilateral")
            } else if a == b || b == c || a == c {
                print("Isosceles")
            } else {
                print("Scalene")
            }
        } else {
            whileFlag = false
        }
    }
}

