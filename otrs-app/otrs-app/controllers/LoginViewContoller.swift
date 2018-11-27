//
//  LoginViewContoller.swift
//  otrs-app
//
//  Created by Imber Fox on 27/11/2018.
//  Copyright © 2018 Imber Fox. All rights reserved.
//

import UIKit

// TODO constSegueNames

class LoginViewContoller: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var logoImage: UIImageView!
    var user = User.defaultUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginAction(_ sender: Any) {
        
        // todo check for correct input
        self.user = User(nickName: loginTextField.text!, password: passwordTextField.text!)
        performSegue(withIdentifier: "ticketsSegue", sender: self)
        // check which button clicked
        // login guard get data from fields
        // send seg or push controller
        // also if register another seg or pushcontroller
        
    }
    
    @IBAction func registerAction(_ sender: Any) {
//        self.navigationController?.pushViewController(self, animated: true)
        performSegue(withIdentifier: "registerSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let id = segue.identifier else {
            return
        }
    
        switch id {
        case "ticketsSegue":
            guard let ticketsController = segue.destination as? TicketListViewController else {return}
            ticketsController.user = self.user
        case "registerSegue":
            guard let registerController = segue.destination as? RegisterViewController else {return}
//            ticketsController.nickname = loginTextField.text!
//            ticketsController.password = passwordTextField.text!
        default:
            break
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
