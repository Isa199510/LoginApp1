//
//  ViewController.swift
//  LoginApp
//
//  Created by Иса on 05.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
//    private let userName = "User"
//    private let password = "Password"
    
    var user: User = .getUserData()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userTabBarController = segue.destination as? UITabBarController else { return }
        guard let tabBarVCs = userTabBarController.viewControllers else { return }

        tabBarVCs.forEach { ViewController in
            if let welcomeVC = ViewController as? WelcomeViewController {
                welcomeVC.welcome = user.person.name
            } else if let navigationVC = ViewController as? UINavigationController {
                guard let userVC = navigationVC.topViewController  as? UserViewController else { return }
                userVC.title = user.person.name
                userVC.surname = user.person.surname
                userVC.name = user.person.name
                userVC.hobby = user.person.getHobby()
                
            }
        }
    }
    

    @IBAction func unwindToLogIn(_ unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    @IBAction func logInPressed() {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                title: "Неправильный логин или пароль",
                message: "Пожалуйста, введите логин и пароль",
                textField: passwordTextField
            )
            return 
        }
        performSegue(withIdentifier: "openUserVC", sender: nil)
    }
    
    @IBAction func forgotPressed(_ sender: UIButton) {
        sender.tag == 0 ?
        showAlert(title: "Упс!", message: "Ваш логин \(user.login)") :
        showAlert(title: "Упс!", message: "Ваш пароль \(user.password)")
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default, handler: { _ in
                textField?.text = ""
            })
        )
        present(alert, animated: true)
    }
}

