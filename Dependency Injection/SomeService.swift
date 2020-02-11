//
//  SomeService.swift
//  Dependency Injection
//
//  Created by D2V iMac on 11/02/20.
//  Copyright © 2020 D2V iMac. All rights reserved.
//

import Foundation


class SomeService {
    
    private init(){}
    static let shared = SomeService()
    
    func doStuff() {
        print("Done")
    }
}
