//
//  ConfirmVC.swift
//  SignUpApp
//
//  Created by  on 10/25/20.
//  Copyright © 2020 ZaCode. All rights reserved.
//

import UIKit

class ConfirmVC: UIViewController {

    @IBOutlet weak var confirmLabel: UILabel!
    
    var confirmText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmLabel.text = confirmText
        confirmLabel.numberOfLines = 0
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
