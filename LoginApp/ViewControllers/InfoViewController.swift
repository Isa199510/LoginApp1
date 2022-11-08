//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Иса on 06.11.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var textViewOutlet: UITextView!
    
    var user: User = .getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewOutlet.text = user.person.biography

    }
    
}
