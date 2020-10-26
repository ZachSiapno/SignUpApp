//
//  ForgotPasswordVC.swift
//  SignUpApp
//
//  Created by  on 10/25/20.
//  Copyright © 2020 ZaCode. All rights reserved.
//

import UIKit

class ForgotPasswordVC: UIViewController {
    
    @IBOutlet weak var recoverLabel: UILabel!
    @IBOutlet weak var recoverTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recoverLabel.numberOfLines = 0
        recoverLabel.text = ""
    }
    
    @IBAction func recoverButton(_ sender: UIButton)
    {
        if recoverTextField.text! == "" {
            recoverLabel.text = "Sorry, there is no email that is entered. Please retry again."
        } else {
            recoverLabel.text = "A recovery password will be sent to \(recoverTextField.text!)\n Thank you for your cooperation"
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
