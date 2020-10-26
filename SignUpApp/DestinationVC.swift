//
//  DestinationVC.swift
//  SignUpApp
//
//  Created by  on 10/23/20.
//  Copyright © 2020 ZaCode. All rights reserved.
//

import UIKit

class DestinationVC: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var barButton: UIBarButtonItem!
    
    var myText = ""
    var colorText = ""
    var success = false
    
    var redArray = ["a", "b", "c", "d", "e"]
    var blueArray = ["f", "g", "h", "i", "j", "k"]
    var greenArray = ["l", "m", "n", "o", "p"]
    var yellowArray = ["q", "r", "s", "t", "u"]
    var purpleArray = ["v", "w", "x", "y", "z"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = myText
        myLabel.numberOfLines = 0
    }
    
    @IBAction func congratsButton(_ sender: UIBarButtonItem) {
        if success == true {
            let alert = UIAlertController(title: "Congrats! You are able to sucessfully login 🎉🎉🎉", message: nil, preferredStyle: UIAlertController.Style.alert)
            let ok = UIAlertAction(title: "Thanks", style: .default) { (action) in
                print("User Tapped on OK")
            }
            
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Please retry logging in...", message: nil, preferredStyle: UIAlertController.Style.alert)
            let ok = UIAlertAction(title: "Okay", style: .default) { (action) in
                print("User Tapped on OK")
            }
            
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
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
