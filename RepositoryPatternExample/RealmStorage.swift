//
//  RealmStorage.swift
//  RepositoryPatternExample
//
//  Created by akio0911 on 2016/04/27.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation
import SwiftTask

class RealmStorage: DataStorageType {
    
    func findAll() -> Task<(),[Person],()> {
        return Task<(),[Person],()>(initClosure: { (_, fulfill, _, _) in
            // Realmからデータを取り出す
            
            return fulfill([
                Person(name: "Sato", age: 20),
                Person(name: "Suzuki", age: 30),
                Person(name: "Tanaka", age: 40)
                ])
        })
    }
    
    func save(person: Person) -> Task<(),(),()> {
        return Task<(),(),()>(initClosure: { (_, fulfill, _, _) in
            // Realmにデータを保存する
            
            return fulfill()
        })
    }
    
}
