//
//  ViewController.swift
//  Keychain
//
//  Created by Admin on 2/6/21.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        let keychain = KeychainSwift()
        let password = keychain.get("password")
        let passwordCheck = passwordTextField?.text
        if passwordCheck == password {
            print("Успешный вход")
            performSegue(withIdentifier: "login", sender: (Any).self)
            //shouldPerformSegue(withIdentifier: "login", sender: (Any).self)
        } else {
            print("Пароль не правильный")
        }
    }
    @IBAction func addPasswordButtonTapped(_ sender: Any) {
        shouldPerformSegue(withIdentifier: "addpassword", sender: (Any).self)
    }
//    func showActionSheet() {
//        let actionSheet = UIAlertController(title: "Название Алерта", message: "Сообщение Алерта", preferredStyle: .actionSheet)
//        actionSheet.addAction(UIAlertAction(title: "Отклонить", style: .cancel, handler: { action in
//            print("Нажато откланить")
//        }))
//        actionSheet.addAction(UIAlertAction(title: "Задать пароль", style: .default, handler: { action in
//            print("Нажато откланить")
//        }))
//        actionSheet.addAction(UIAlertAction(title: "Редактировать пароль", style: .default, handler: { action in
//            print("Нажато откланить")
//        }))
//        actionSheet.addAction(UIAlertAction(title: "Удалить", style: .destructive, handler: { action in
//            print("Нажато откланить")
//        }))
//        present(actionSheet, animated: true)
//    }
}

