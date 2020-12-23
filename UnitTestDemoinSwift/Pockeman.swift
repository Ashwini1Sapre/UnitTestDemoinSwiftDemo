//
//  Pockeman.swift
//  UnitTestDemoinSwift
//
//  Created by Knoxpo MacBook Pro on 23/12/20.
//

import Foundation


class Pockeman
{
    var type: pockemanType
    var attacktype: PockemanAttackType
    var health:Int = 100
    
    
    
    init(type: pockemanType, attchType: PockemanAttackType) {
        self.type = type
        self.attacktype = attchType
    }
    
    
    
    func attack(enemy: Pockeman)
    {
        var damage = 30
        
        if enemy.type == .fire && enemy.attacktype == .fire
        {
            
            damage = 60
        }
        if enemy.type == .water && enemy.attacktype == .water
        {
            damage = 10
            
        }
        
        enemy.health = enemy.health - damage
        
        
    }
    
}

enum pockemanType
{
    case neatural
    case fire
    case water
    
    
    
}

enum PockemanAttackType
{
    case neatural
    case fire
    case water
    
}
