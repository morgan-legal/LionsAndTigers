//
//  Tigers.swift
//  LionsAndTigers
//
//  Created by Morgan Le Gal on 4/22/15.
//  Copyright (c) 2015 Morgan Le Gal. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff(){
        println("Tiger: Chuff Chuff")
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int){
        for var chuff = 0; chuff < numberOfTimes; ++chuff
        {
            self.chuff()
        }
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud: Bool){
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++
        {
            if isLoud {
                chuff()
            }
            else{
                println("Tiger: purr purr")
            }
            
        }
    }
    
    func ageInTigerYearsFromAge(tigerAge: Int) -> Int{
        return tigerAge * 3
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        
        var randomFact:String
        
        switch(randomNumber)
        {
            case 0: randomFact = "The Tiger is the biggest species in the cat family"
            break
            
            case 1: randomFact = "Tigers can reach a length of 3.3 meters"
            break
            
            default:randomFact = "A group of tiger is known as an 'ambush' or 'streak'"
            break
        }
        
        return randomFact
    }
}