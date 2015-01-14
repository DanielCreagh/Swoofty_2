//
//  PickOrderParser.swift
//  Swoofty_2
//
//  Created by Daniel Creagh on 14/01/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import Foundation

func parseJsonToPickOrders(dictionaryContainingData: Dictionary<String, AnyObject>) -> String? {
    
    for (myKey,myValue) in dictionaryContainingData {
        if myKey == "deliveryReferences" {
            if let newDict = dictionaryContainingData[myKey] {
                if let theId = newDict["deliveryReferenceId"] {
                    return (theId as String)
                }
            }
        }
    }
    return nil
}