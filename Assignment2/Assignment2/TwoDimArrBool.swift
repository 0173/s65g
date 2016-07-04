//
//  TwoDimArrBool.swift
//  Assignment2
//
//  Created by Elio Pajares on 7/4/16.
//  Copyright © 2016 Elio Pajares. All rights reserved.
//

import Foundation
//top level enum
enum NeighborStatus{
    case alive
    case dead
    case starved
    case overpopulated
    case reproduced
    
    // dynamic variable
    var isAlive : Bool {
        switch (self) {
        case .alive:
            fallthrough
        case .reproduced:
            return true
        case .overpopulated,
             .starved,
             .dead:
            return false
        }
        
    }
}

class TwoDimArrBool {   //TwoDimensional ===== TwoDimArrBool
    let height : Int
    let width : Int
    let twoDimArrOfBool : Array<Array<Int>>    //twoDimArrayOfInt === twoDimArrOfBool
    init (height: Int, width: Int) {
        self.height = height
        self.width = width
        
        var tmpArray = Array(count: height, repeatedValue: Array(count: width, repeatedValue: 0))
  
        //initialize the array to random values
        for h in 0..<height {
            for w in 0..<width {
                //provide integers zero, one or two
                tmpArray[h][w] = Int(arc4random_uniform(3))
            }
        }
        self.twoDimArrOfBool = tmpArray
        
    }
    
    func printMyArrayBefore() {
        for arrayOfInt in twoDimArrOfBool {
            var stringLogBefore = ""
            for intValue in arrayOfInt {
                    //check if the value is One or alive, draw as a T
                    stringLogBefore += "\((intValue == 1) ? "T" : "F") "
            }
            print (stringLogBefore)
        }
    }
    
    
}

