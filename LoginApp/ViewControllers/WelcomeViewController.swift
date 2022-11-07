//
//  UserViewController.swift
//  LoginApp
//
//  Created by Иса on 06.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcome)"
        print(welcome)
    }

}
