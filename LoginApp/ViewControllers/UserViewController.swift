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
    
    var surname = ""
    var name = ""
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageUserOutlet.layer.cornerRadius = imageUserOutlet.frame.width / 2
        surnameLabelOutlet.text = surname
        nameLabelOutlet.text = name
        hobbyLabelOutlet.text = hobby
        
    }
    

}
