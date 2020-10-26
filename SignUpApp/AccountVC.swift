//
//  AccountVC.swift
//  SignUpApp
//
//  Created by  on 10/25/20.
//  Copyright © 2020 ZaCode. All rights reserved.
//

import UIKit

class AccountVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "AccountSegue"
        {
            let confirm = segue.destination as? ConfirmVC
            if emailTextField.text! == "" || usernameTextField.text! == "" || passwordTextField.text! == "" || confirmPasswordTextField.text! == "" {
                confirm?.confirmText = "You left at least one textfield blank. Please retry in order to make an account."
            } else if passwordTextField.text! != confirmPasswordTextField.text! {
                confirm?.confirmText = "You failed to type your password twice correctly.\n\nPlease make sure that your password is written correctly in both the 'password' and 'confirm password' textboxes."
            }
            else {
                confirm?.confirmText = "Congratulations! You have now signed up successfully. Just so you remember:\n\nEmail: \(emailTextField.text!) \nUsername: \(usernameTextField.text!)\nPassword: \(passwordTextField.text!)"
            }
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
