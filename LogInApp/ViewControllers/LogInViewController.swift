//
//  ViewController.swift
//  LogInApp
//
//  Created by Boris Bogorad on 6/9/20.
//  Copyright © 2020 Boris Bogorad. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUserData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let mainVC = tabBarController.viewControllers?.first as! MainViewController
        let aboutMeVC = tabBarController.viewControllers?.last as! AboutMeViewController
        mainVC.user = user
        aboutMeVC.user = user
    }

    @IBAction func logInButton(_ sender: UIButton) {
        guard
            userNameTextField.text == user.name,
        passwordTextField.text == user.password
        else {
            showAlert(title: "Invalud login ar pass",
            message: "Please enter corect password or login!",
            textField: passwordTextField)
            return
          }
        performSegue(withIdentifier: "logIn", sender: nil)
        }
    }
    
    
//    @IBAction func forgotUserNameButton(_ sender: UIButton) {
//    }
//
//
//    @IBAction func forgotPassButton(_ sender: UIButton) {
//    }





extension LogInViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            _ in textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
        
        
}
