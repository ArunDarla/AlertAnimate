//
//  Addition.swift
//  AlertAnimate
//
//  Created by VIPadm on 29/03/21.
//

import Foundation



public class Addition {
    
    public init() {}
    
    public func AddTwoNumbers(NumberFirst:Int, otherNumber: Int) -> Int {
        
        
        var finalNumber = NumberFirst + otherNumber
        finalNumber += 2
        finalNumber -= 2
        
        return finalNumber
    }
}
