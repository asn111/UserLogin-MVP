//
//  UserPresenter.swift
//  UserLogin MVP
//
//  Created by Ahsan Iqbal on 24/12/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation

protocol VCDelegates {
    
    func loginSuccessfull()
    func showMessege(message: String)
    
}
class UserPresenter: NSObject {
    
    var user: User!
    var delegate: VCDelegates!
    var name: String  {return user.userName}
    var email: String {return user.email}
    var gender: String {return user.gender}
    
    func validateUser(userName: String, passWord: String) {
        if userName.count == 0 {
            self.delegate.showMessege(message: "Please enter a valid username")
        } else {
            if passWord.count == 0 {
                self.delegate.showMessege(message: "Please enter a valid password")
            } else {
                verifyUserData(username: userName, passWord: passWord)
            }
        }
    }
    
    func verifyUserData(username: String, passWord: String) {
        
        if username == "Ahsan" && passWord == "Admin" {
            user = User(userName: username, gender: "Male", email: "asi@yahoo.com")
            self.delegate.loginSuccessfull()
        } else {
            self.delegate.showMessege(message: "Credentials doesnot match try again please.")
        }
    }
}
