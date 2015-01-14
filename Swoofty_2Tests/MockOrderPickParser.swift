//
//  MockOrderPickParser.swift
//  Swoofty
//
//  Created by Daniel Creagh on 13/01/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import Foundation

class MockOrderPickParser {
    
    func getPickOrderData() -> Dictionary<String, AnyObject>? {
        
        
        let filepath = NSBundle(forClass: MockOrderPickParser.self).pathForResource("TestParserData", ofType: ".json")
        
        if let content = String(contentsOfFile: filepath!, encoding: NSUTF8StringEncoding, error: nil) {
            var error: NSError?
            
            var data:NSData! = content.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
            let jsonDict = (NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary) as Dictionary

            return (jsonDict as Dictionary<String, AnyObject>)
        }                
        return nil
    }
    
    
}