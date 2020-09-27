import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fifth controller"
        let backButton = UIBarButtonItem() //создаем переменную для пустой кнопки назад без названия,  чтобы отображалась только стрелочка
        backButton.title = "" // задаем значение/пустое название
        navigationItem.backBarButtonItem = backButton // передаем ее в кнопку назад которая стрелочка
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

   

}
