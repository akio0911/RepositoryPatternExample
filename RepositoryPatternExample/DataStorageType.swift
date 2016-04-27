//
//  DataStorageType.swift
//  RepositoryPatternExample
//
//  Created by akio0911 on 2016/04/27.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation
import SwiftTask

protocol DataStorageType {
    func findAll() -> Task<(),[Person],()>
    func save(person: Person) -> Task<(),(),()>
}

