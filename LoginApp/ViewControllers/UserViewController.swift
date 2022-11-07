//
//  UserViewController.swift
//  LoginApp
//
//  Created by Иса on 07.11.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var imageUserOutlet: UIImageView!
    
    @IBOutlet var surnameLabelOutlet: UILabel!
    @IBOutlet var nameLabelOutlet: UILabel!
    @IBOutlet var hobbyLabelOutlet: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageUserOutlet.layer.cornerRadius = imageUserOutlet.frame.width / 2

        // Do any additional setup after loading the view.
    }
    

}
