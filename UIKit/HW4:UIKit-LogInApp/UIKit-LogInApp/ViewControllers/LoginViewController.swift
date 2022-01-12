 //  LoginScreenViewController.swift
 //  LoginApp
 //
 //  Created by Kalabishka Ivan on 13.07.2021.
 //
 
 // MARK: - IB Outlets
 // MARK: - Public Properties
 // MARK: - Private Properties
 // MARK: - Initializers
 // MARK: - Override Methods
 // MARK: - IB Action
 // MARK: - Public Methods
 // MARK: - Private Methods
 
 import UIKit
 
 class LoginViewController: UIViewController {
    
    @IBOutlet var userTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.user = user
    }
    
    @IBAction func loginButtonPressed() {
        if userTF.text != user.login || passwordTF.text != user.password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
    }
    
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(
                title: "Forgot your login?",
                message: "Your login is: \(user.login)"
            )
            : showAlert(
                title: "Forgot your password?",
                message: "Your password is: \(user.password)"
            )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userTF.text = ""
        passwordTF.text = ""
    }
 }
 
 // MARK: - Private Methods
 extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
 }

 // MARK: - Alert Controller
 extension LoginViewController: UITextFieldDelegate  {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonPressed()
            performSegue(withIdentifier: "welcomeSegue", sender: nil)
        }
        return true
    }
 }
 
 // MARK: - hide NavigationController
 extension LoginViewController{
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
 }
