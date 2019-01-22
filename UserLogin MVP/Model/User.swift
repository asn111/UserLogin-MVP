//
//  User.swift
//  UserLogin MVP
//
//  Created by Ahsan Iqbal on 24/12/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation

class User {
    
    var userName: String
    var gender: String
    var email: String
    
    init(userName: String, gender: String, email: String) {
        self.userName = userName
        self.email = email
        self.gender = gender
    }
}
