import UIKit

class SecondViewController: UIViewController {

    var myView: UIView!

    @IBOutlet weak var buttonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second controller"
        let backButton = UIBarButtonItem() //создаем переменную для пустой кнопки назад без названия,  чтобы отображалась только стрелочка
        backButton.title = "" // задаем значение/пустое название
        navigationItem.backBarButtonItem = backButton // передаем ее в кнопку назад которая стрелочка
        myView = UIView()
        myView.frame.size = CGSize (width: 50, height: 50)
        
        myView.backgroundColor = .yellow
        view.addSubview(myView)

        
        print ("\(buttonView.frame.height))")
        print ("\(view.frame.height))")
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        myView.center.x = (view.frame.width)/2
        myView.center.y = (view.frame.height - buttonView.frame.height)/2
        
        myView.layer.cornerRadius = myView.frame.size.width/2
        myView.layer.masksToBounds = true
    }

    @IBAction func tappingLeftButton(_ sender: Any) {
        if myView.frame.origin.x - 10 >= 0 {
            myView.frame.origin.x -= 10 }
    }

    @IBAction func tappingRightButton(_ sender: Any) {
        if myView.frame.origin.x + myView.frame.width + 10 <= view.frame.width {
            myView.frame.origin.x += 10 }
    }

    @IBAction func tappingUpButton(_ sender: Any) {
        if myView.frame.origin.y - 10 >= 0 {
            myView.frame.origin.y -= 10 }
    }

    @IBAction func tappingDownButton(_ sender: Any) {
        if myView.frame.origin.y + myView.frame.height + 10 <= view.frame.height - buttonView.frame.height {
            myView.frame.origin.y += 10 }
    }


}




    
    




