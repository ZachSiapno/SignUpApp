//
//  ViewController.swift
//  SignUpApp
//
//  Created by  on 10/23/20.
//  Copyright © 2020 ZaCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var email = ""
    var name = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emailTextField.text = email
        nameTextField.text = name
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "LoginSegue"
        {
            let nameText = nameTextField.text!
            let destination = segue.destination as? DestinationVC
            if emailTextField.text! == "" || nameTextField.text! == "" || passwordTextField.text! == "" {
                destination?.myText = "You left at least one textfield blank. Please retry in order to login."
                destination?.success = false
                destination?.barButton.title = "Fail"
            } else {
                destination?.success = true
                destination?.barButton.title = "Congrats!"
                destination?.myText = "Welcome \(nameTextField.text!). Thanks for logging in with \(emailTextField.text!)."
                
                destination?.colorText = String(nameText.prefix(1).lowercased())
                
                if (destination?.redArray.contains(destination!.colorText))!
                {
                    destination?.view.backgroundColor = UIColor.red
                }
                
                if (destination?.blueArray.contains(destination!.colorText))!
                {
                    destination?.view.backgroundColor = UIColor.blue
                }
                
                if (destination?.greenArray.contains(destination!.colorText))!
                {
                    destination?.view.backgroundColor = UIColor.green
                }
                
                if (destination?.yellowArray.contains(destination!.colorText))!
                {
                    destination?.view.backgroundColor = UIColor.yellow
                    
                }
                if (destination?.purpleArray.contains(destination!.colorText))!
                {
                    destination?.view.backgroundColor = UIColor.purple
                }
            }
        }
    }
    
}

