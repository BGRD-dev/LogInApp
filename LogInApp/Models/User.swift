//
//  User.swift
//  LogInApp
//
//  Created by Boris Bogorad on 6/11/20.
//  Copyright © 2020 Boris Bogorad. All rights reserved.
//

struct User {
    
    let name: String
    let password: String
    
    static func getUserData() -> User {
        User(name: "User", password: "Password")
    }
}
