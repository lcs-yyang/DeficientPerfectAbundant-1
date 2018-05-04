//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//
import Foundation

// INPUT
var n = 0

while 1 == 1 {
    
    // Test #1: Make sure input is not nil
    guard let givenInput = readLine() else {
        continue
    }
    
    // Test #2: Needs to be an integer.
    guard let givenInteger = Int(givenInput) else{
        continue
    }
    
    //Test #3: Is the integer in the correct range?
    if givenInteger < 1  || givenInteger > 32500 {
        continue
    }
    n = givenInteger
    break
    
} // End of loop

var sum = 1
// PROCESS
for i in 2...n/2 {
    print(i)
    if n % i == 0 {
        sum += i
    }
}
print(sum)

// OUTPUT
//Boundary casr when n is 1
if n == 1 {
    print("1 is a deficient number.")
} else {
    if sum < n {
        print("\(n) is a deficient number.")
    } else if sum == n {
        print("\(n) is a perfect number.")
    } else {
        print("\(n) is an abundant number.")
    }
    
}
