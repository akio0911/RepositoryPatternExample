//
//  Person.swift
//  RepositoryPatternExample
//
//  Created by akio0911 on 2016/04/27.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation

struct Person: CustomStringConvertible {
    var name: String
    var age: Int
    
    var description: String {
        return "\(name)さん(\(age))"
    }
}