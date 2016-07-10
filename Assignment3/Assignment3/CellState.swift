//
//  CellState.swift
//  Assignment3
//
//  Created by Elio Pajares on 7/9/16.
//  Copyright © 2016 Elio Pajares. All rights reserved.
//

import Foundation
import UIKit

var str = "herllow this your CellState"
indirect enum CellState: String {
    case Living = "you are Living"
    case Empty = "you are Empty"
    case Born = "you were Born"
    case Died = "you are Death"
    
    //
    func descriptionCellState() -> String {
        switch (self) {
        case .Living:
            return CellState.Living.rawValue
        case .Empty:
            return CellState.Empty.rawValue
        case .Born:
            return CellState.Born.rawValue
        case .Died:
            return CellState.Died.rawValue
            
        }
        
    }
    //return all the available values for enum CellState
    func allValues() -> Any {
        let allValuesCellState = [CellState.Living, CellState.Empty, CellState.Born, CellState.Died]
        // use map to loop an array
        let keys4 = allValuesCellState.map{(k) in return k}
        //getting an erro cannot convert return exp type [] to return tyoe array
        return keys4
    }
   // mutating func toggle(value:CellState) -> CellState{
   //     switch (self) {
   //     case .Empty,
   //          .Died:
   //         self = .Living
   //     case .Living,
   //          .Born:
   //         self = .Empty
   //     default:
   //         print("no an option")
   //     }
   //     return self
   // }
    
    func toggle() -> CellState{
        switch (self) {
        case .Empty,
             .Died:
            return .Living
        case .Living,
             .Born:
            return .Empty
        // default: este titne q s
        //    print("no an option")
        }
        
    }
    

    

    
    
}
       
        
    
    
    
    

