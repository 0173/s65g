//
//  Engine.swift
//  Assignment2
//
//  Created by Elio Pajares on 7/5/16.
//  Copyright © 2016 Elio Pajares. All rights reserved.
//

import Foundation

class Engine {
    
    func step( array : Array<Array<Bool>>, height: Int, width: Int ) {
      print("in step method")
      var twoDimArrOfBoolAfter : Array<Array<Bool>>;
       twoDimArrOfBoolAfter = Array(count: height, repeatedValue: Array(count: width, repeatedValue: false))
    
        for( var i = 0; i < array.count; i += 1 ) {
            // for i in 0..<array.count {
            
            let width :Int = array.count;
            
            for( var j = 0; j < array[i].count; j += 1 ) {
                //    for j in 0..<array[i].count {
                
                let height :Int = array[i].count;
                
                let livingNeighborsCount : Int = countLivingNeighbors( array, i: i, j: j, width: width, height: height);
                
                //twoDimArrOfBoolAfterprint(livingNeighborsCount);
                
                if( livingNeighborsCount < 2 ) {
                    twoDimArrOfBoolAfter[i][j] = false;
                }
                else if( livingNeighborsCount == 2 || livingNeighborsCount == 3 ) {
                    twoDimArrOfBoolAfter[i][j] = true;
                }
                else if( livingNeighborsCount > 3 ) {
                    twoDimArrOfBoolAfter[i][j] = false;
                }
                
                // special rule, dead cell become live cell
                if( array[i][j] != true && livingNeighborsCount == 3 ) {
                    twoDimArrOfBoolAfter[i][j] = true;
                }
            }
            
        }
    }
    func countLivingNeighbors(array : Array<Array<Bool>>, i :Int, j :Int, width :Int, height :Int) -> Int {
        var count : Int = 0;
        
        var x : Int
        var y : Int
    
        x = checkBoundry(i - 1, bounds: width);
        y = checkBoundry(j - 1, bounds: height);
        if( array[x][y] == true ){ count += 1; }
        
        x = checkBoundry(i - 1, bounds: width);
        y = checkBoundry(j, bounds: height);
        if( array[x][y] == true ){ count += 1; }
        
        x = checkBoundry(i - 1, bounds: width);
        y = checkBoundry(j + 1, bounds: height);
        if( array[x][y] == true ){ count += 1; }
        
        x = checkBoundry(i, bounds: width);
        y = checkBoundry(j - 1, bounds: height);
        if( array[x][y] == true ){ count += 1; }
        
        x = checkBoundry(i, bounds: width);
        y = checkBoundry(j + 1, bounds: height);
        if( array[x][y] == true ){ count += 1; }
        
        x = checkBoundry(i + 1, bounds: width);
        y = checkBoundry(j - 1, bounds: height);
        if( array[x][y] == true ){ count += 1; }
        
        x = checkBoundry(i + 1, bounds: width);
        y = checkBoundry(j, bounds: height);
        if( array[x][y] == true ){ count += 1; }
        
        x = checkBoundry(i + 1, bounds: width);
        y = checkBoundry(j + 1, bounds: height);
        if( array[x][y] == true ){ count += 1; }
        
        return count;
    }
    
    func checkBoundry( v :Int, bounds :Int ) -> Int {
        if( v < 0 ){ return (bounds-1); }
        else if( v == bounds ){ return 0; }
        else{ return v; }
    }
    
}



