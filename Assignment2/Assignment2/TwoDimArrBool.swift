//
//  TwoDimArrBool.swift
//  Assignment2
//
//  Created by Elio Pajares on 7/4/16.
//  Copyright © 2016 Elio Pajares. All rights reserved.
//

import Foundation
//top level enum
//enum NeighborStatus{
//    case alive
//    case dead
//    case starved
//    case overpopulated
//    case reproduced
    
    // dynamic variable
//    var isAlive : Bool {
//        switch (self) {
//        case .alive:
//            fallthrough
 //       case .reproduced:
//            return true
 //       case .overpopulated,
  //           .starved,
 //            .dead:
//            return false
//        }
        
//    }
//}

class TwoDimArrBool {
    let height : Int
    let width : Int
    let twoDimArrOfBool : Array<Array<Int>>
    var twoDimArrOfBoolAfter : Array<Array<Int>>
    //let twoDimArrOfBoolAfter : Array<Array<Int>>
    init (height: Int, width: Int) {
        //precondition, height and width must be positive integer
        self.height = height
        self.width = width
        
        var tmpArray = Array(count: height, repeatedValue: Array(count: width, repeatedValue: 0))
        var tmpArray2 = Array(count: height, repeatedValue: Array(count: width, repeatedValue: 0))
  
        //initialize the array to random values
        for h in 0..<height {
            for w in 0..<width {
                //provide integers zero, one or two
                tmpArray[h][w] = Int(arc4random_uniform(3))
                tmpArray2[h][w] = tmpArray[h][w]
            }
        }
        self.twoDimArrOfBool = tmpArray
        self.twoDimArrOfBoolAfter = tmpArray
        
    }
    
    func printMyArrayBefore() {
        for arrayOfInt in twoDimArrOfBool {
            var stringLogBefore = ""
            for intValue in arrayOfInt {
                    //check if the value is One or alive, draw as a T
                    stringLogBefore += "\((intValue == 1) ? "T" : "F") "
            }
            print (stringLogBefore)
            //print("this is from printMyArrayBefore")
        }
    }
    func printMyArrayAfter(){
        for arrayOfInt in twoDimArrOfBoolAfter {
            var stringLogBefore = ""
            for intValue in arrayOfInt {
                //check if the value is One or alive, draw as a T
                stringLogBefore += "\((intValue == 1) ? "T" : "F") "
            }
            print (stringLogBefore)
            //print("this is from printMyArrayAfter")
        }
        
    }
    func countBeforeArray() -> Int {
        var count : Int = 0;
        for arrayOfInt in twoDimArrOfBool {
            for intValue in arrayOfInt {
                if(intValue == 1) {
                    count += 1;
                }
            }
        }
        return count;
    }
    
    func countAfterArray() -> Int {
        var count : Int = 0;
        for arrayOfInt in twoDimArrOfBoolAfter {
            for intValue in arrayOfInt {
                if(intValue == 1) {
                    count += 1;
                }
            }
        }
        return count;
    }
    
    func conwayGameStart() {
        
        print("in conwayGameStart");
        
        //for( var i = 0; i < twoDimArrOfBool.count; i += 1 ) {
        for i in 0..<twoDimArrOfBool.count {
            
            //for( var j = 0; j < twoDimArrOfBool[i].count; j += 1 ) {
            for j in 0..<twoDimArrOfBool[i].count {
                
                let livingNeighborsCount : Int = countLivingNeighbors( i, j: j);
                
                //twoDimArrOfBoolAfterprint(livingNeighborsCount);
                
                if( livingNeighborsCount < 2 ) {
                    self.twoDimArrOfBoolAfter[i][j] = 0;
                }
                else if( livingNeighborsCount == 2 || livingNeighborsCount == 3 ) {
                    self.twoDimArrOfBoolAfter[i][j] = 1;
                }
                else if( livingNeighborsCount > 3 ) {
                    self.twoDimArrOfBoolAfter[i][j] = 0;
                }
                
                // special rule, dead cell become live cell
                if( twoDimArrOfBool[i][j] != 1 && livingNeighborsCount == 3 ) {
                    self.twoDimArrOfBoolAfter[i][j] = 1;
                }
            }
            
        }
        
    }
    
    func countLivingNeighbors(i :Int, j :Int) -> Int {
        var count : Int = 0;
        
        var x : Int;
        var y : Int;
        
        x = checkX(i - 1);
        y = checkY(j - 1);
        if( twoDimArrOfBool[x][y] == 1 ){ count += 1; }
        
        x = checkX(i - 1);
        y = checkY(j);
        if( twoDimArrOfBool[x][y] == 1 ){ count += 1; }
        
        x = checkX(i - 1);
        y = checkY(j + 1);
        if( twoDimArrOfBool[x][y] == 1 ){ count += 1; }
        
        x = checkX(i);
        y = checkY(j - 1);
        if( twoDimArrOfBool[x][y] == 1 ){ count += 1; }
        
        x = checkX(i);
        y = checkY(j + 1);
        if( twoDimArrOfBool[x][y] == 1 ){ count += 1; }
        
        x = checkX(i + 1);
        y = checkY(j - 1);
        if( twoDimArrOfBool[x][y] == 1 ){ count += 1; }
        
        x = checkX(i + 1);
        y = checkY(j);
        if( twoDimArrOfBool[x][y] == 1 ){ count += 1; }
        
        x = checkX(i + 1);
        y = checkY(j + 1);
        if( twoDimArrOfBool[x][y] == 1 ){ count += 1; }
        
        return count;
    }
    
    func checkX( x :Int ) -> Int {
        if( x < 0 ){ return (width-1); }
        else if( x == width ){ return 0; }
        else{ return x; }
    }
    
    func checkY( y :Int ) -> Int {
        if( y < 0 ){ return (height-1); }
        else if( y == height ){ return 0; }
        else{ return y; }
    }

    
    
    
}

