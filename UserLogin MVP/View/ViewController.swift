//
//  ViewController.swift
//  UserLogin MVP
//
//  Created by Ahsan Iqbal on 24/12/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, VCDelegates {

    //MARK: Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var errorLbl: UILabel!
    
    //MARK: Actions
    @IBAction func submitBtnPressed(_ sender: Any) {
        errorLbl.isHidden = true
        presenter.validateUser(userName: userNameTF.text!, passWord: passTF.text!)
    }
    
    //MARK: properties
    var presenter: UserPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = UserPresenter()
        errorLbl.isHidden = true
        presenter.delegate = self
    }
    
    func loginSuccessfull() {
        errorLbl.isHidden = false
        errorLbl.textColor = UIColor.green
        errorLbl.text = "User loggedin Successfully \n\(presenter.name), \n\(presenter.email), \n\(presenter.gender) "
    }
    
    func showMessege(message: String) {
        errorLbl.isHidden = false
        errorLbl.textColor = UIColor.orange
        errorLbl.text = message
    }
}

