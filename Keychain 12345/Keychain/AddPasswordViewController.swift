//
//  AddPasswordViewController.swift
//  Keychain
//
//  Created by Admin on 2/6/21.
//

import UIKit
import KeychainSwift

class AddPasswordViewController: UIViewController {

    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var controlPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func savePasswordTapped(_ sender: Any) {
        let keychain = KeychainSwift()
        var password = passwordTextField.text
        var controlPassword = controlPasswordTextField.text
        if password == controlPassword {
            //что небудь
            keychain.set(password!, forKey: "password")
//            keychain.get(password!)
            dismiss(animated: true, completion: nil)
        } else {
            print("Пароль не совпадает")
        }
    }
    

}
