//
//  SwooftyTests.swift
//  SwooftyTests
//
//  Created by Daniel Creagh on 12/01/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import UIKit
import XCTest

class SwooftyTests: XCTestCase {
    
    var mockParser: MockOrderPickParser!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        mockParser = MockOrderPickParser()
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testParserExectues() {
        
        if let picData = mockParser.getPickOrderData() {
            println("******* picdata")
            println(picData["deliveryReferences"])
            
            let result = parseJsonToPickOrders(picData)
            
            XCTAssert(result == "4097550356", "parser not return 'egg'")
        }
    }
    
}
