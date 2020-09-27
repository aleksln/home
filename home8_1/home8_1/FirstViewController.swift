import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First controller" //имя контролерра
        let backButton = UIBarButtonItem() //создаем переменную для пустой кнопки назад без названия,  чтобы отображалась только стрелочка
        backButton.title = "" // задаем значение/пустое название
        navigationItem.backBarButtonItem = backButton // передаем ее в кнопку назад которая стрелочка
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    @IBAction func showSecondController(_ sender: Any) {
        let storyboard = UIStoryboard (name: "SecondViewController", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier:
            String(describing: SecondViewController.self)) as! SecondViewController
        viewController.modalPresentationStyle = .fullScreen
        
        navigationController?.pushViewController(viewController, animated: true)
    }
    

    @IBAction func showThirdViewController(_ sender: Any) {
        let storyboard = UIStoryboard (name: "ThirdViewController", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier:
            String(describing: ThirdViewController.self)) as! ThirdViewController
        viewController.modalPresentationStyle = .fullScreen
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}
