//
//  APIStorage.swift
//  RepositoryPatternExample
//
//  Created by akio0911 on 2016/04/27.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation
import SwiftTask

class APIStorage: DataStorageType {
    func findAll() -> Task<(),[Person],()> {
        return Task<(),[Person],()>(initClosure: { (_, fulfill, _, _) in
            // APIを通じてデータを取得する
            
            return fulfill([
                Person(name: "Sato", age: 20),
                Person(name: "Suzuki", age: 30),
                Person(name: "Tanaka", age: 40)
                ])
        })
    }
    
    func save(person: Person) -> Task<(),(),()> {
        return Task<(),(),()>(initClosure: { (_, fulfill, _, _) in
            // APIを通じてデータを保存する
            
            return fulfill()
        })
    }
    
}
