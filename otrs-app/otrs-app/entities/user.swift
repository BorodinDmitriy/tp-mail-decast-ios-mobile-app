//
//  user.swift
//  otrs-app
//
//  Created by Imber Fox on 27/11/2018.
//  Copyright © 2018 Imber Fox. All rights reserved.
//

import Foundation

class User {
    let nickName: String
    let password: String
    
    init(nickName: String, password: String) {
        self.nickName = nickName
        self.password = password
    }
    
    static func defaultUser() -> User {
        return User(nickName: "", password: "")
    }
}
