//
//  LoggedInViewController.swift
//  Keychain
//
//  Created by Admin on 2/6/21.
//

import UIKit

//UIImagePickerControllerDelegate & UINavigationControllerDelegate для pickerController.delegate = self
class LoggedInViewController: UIViewController {

    
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageView: UIImageView!
    
    
    private let pickerController = UIImagePickerController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //для того чтобы scrollView мог работать imageView
        scrollView.delegate = self
        
        pickerController.sourceType = .photoLibrary //выбор откуда фото
        pickerController.allowsEditing = true //позволяет изменять зумить обрезать выбранное фото
        pickerController.delegate = self // для того чтобы получить выбранную картинку нужно реализовать делегат UIImagePickerController
    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//    }

    @IBAction func addPicture(_ sender: Any) {
        let picker = UIImagePickerController()
        present(pickerController, animated: true)
    }
}

extension LoggedInViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}

    //реализация протоколов pickerController и navigationController для pickerController.delegate = self
extension LoggedInViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //функция вызовится когда при выборе из галлереи мы нажмем кнопку choose
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //создали переменную для работы со словарем фотографий галереи и получаем фотографию которую зумили обрезали
        //это опционал и для того чтобы гарантировать запись не пустой
        if let image = info[.editedImage] as? UIImage {
            imageView.image = image
        }
        //закрываем picker
        picker.dismiss(animated: true)
    }
}


