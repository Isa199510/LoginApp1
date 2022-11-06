//
//  UserViewController.swift
//  LoginApp
//
//  Created by Иса on 06.11.2022.
//

import UIKit

class UserViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcome)"
        print(welcome)
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
