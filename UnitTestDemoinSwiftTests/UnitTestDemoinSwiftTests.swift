//
//  UnitTestDemoinSwiftTests.swift
//  UnitTestDemoinSwiftTests
//
//  Created by Knoxpo MacBook Pro on 23/12/20.
//

import XCTest
@testable import UnitTestDemoinSwift

class UnitTestDemoinSwiftTests: XCTestCase {
    
    var squarial: Pockeman!
    var pycyduck: Pockeman!
    var chorandor: Pockeman!
    
    override func setUp() {
        squarial = Pockeman(type: .water, attchType: .fire)
       
        chorandor = Pockeman(type: .fire, attchType: .fire)
        pycyduck = Pockeman(type: .water, attchType: .water)
        
        
    }
    
    override func tearDown() {
        squarial = nil
        pycyduck = nil
        chorandor = nil
    }
    
    func testwaterpockemandamagetoFirePockaman(){


     //   squarial.attack(enemy: chorandor)

      //  squarial.attack(enemy: pycyduck)

//
      //  print(chorandor.health)
     //   print(pycyduck.health)
        
        
        chorandor.attack(enemy: squarial)
        chorandor.attack(enemy: pycyduck)
        
        
        
        print(squarial.health)
        print(pycyduck.health)
        
        
        
        XCTAssertTrue(squarial.health < pycyduck.health)

    

       // XCTAssertTrue(chorandor.health < pycyduck.health)
       
    }
    
    
    
    
    
    
  

}
