import UIKit

class ViewController: UIViewController {
    
    
    enum Direction { // создали енум для управления вверх и вниз
        case up, down
    }
    @IBOutlet weak var purpleView: UIView! //привязали юайвью на сториборд
    let greenView = UIView() //создали на сториборд greenView это будет второй шарик
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let imageFromeNetwork = UIImage(data: Data(contentsOf: URL(string: "")))
        
        purpleView.frame.size = CGSize(width: 100, height: 100) //задали размер purpleView
        purpleView.layer.cornerRadius = 50 // задали закругление краев purpleView получился круг
        greenView.backgroundColor = .green //задали greenView зеленый цвет
        greenView.frame.size = purpleView.frame.size //задали greenView такой же размер как у purpleView
        greenView.layer.cornerRadius = 50 // задали закругление краев purpleView получился круг
        view.addSubview(greenView) //добавили на вью наш greenView чтобы он был виден
        
    }
        
    override func viewWillAppear(_ animated: Bool) { //создаем анимацию движения purpleView
        super.viewWillAppear(animated)
        purpleView.center.y = view.center.y //прировняли по Y purpleView к центру вью чтобы он был по центру Y
        purpleView.center.x = view.frame.width / 3 //прировняли по Х(ширина) purpleView к центру вью поделили на 3 таким образом он расположился на одной трети на вью
        greenView.center.y = view.center.y //прировняли по Y greenView к центру вью чтобы он был по центру Y
        greenView.center.x = view.frame.width * 2 / 3 //прировняли по Х(ширина) greenView к центру вью умножили на 2 и поделили на 3 таким образом он расположился на две трети на вью
    }

    func animateCircle(direction: Direction, completion: @escaping () -> ()) { //создали функцию для управления вверх и вниз и передали в нее наш енум Direction и в completion передадим нашу анимацию
        UIView.animate(withDuration: 2, delay: 0, options: [.curveLinear], animations: {
            switch direction {
            case .up:
                self.purpleView.center.y = 0 //при нажатии up двигает purpleView вверх
            case .down:
                self.purpleView.center.y = self.view.center.y //при нажатии down двигает purpleView вниз
            }
        })
        {
        (_) in
            completion()
        }
        
        
    }
    
    @IBAction func animatedButtonPressed(_ sender: Any) { //создали действие для кнопки GO UP для перемещения нашего purpleView по экрану
        animateCircle(direction: .up) {
                print("Revers")
            self.animateCircle(direction: .down) {
                print("Animation done")
            }
            
        }
    }
    
}
    

// первый вариант перемещения двух шариков без енума

/*@IBAction func animatedButtonPressed(_ sender: Any) { //создали действие для кнопки GO UP для перемещения нашего purpleView по экрану
 UIView.animate(withDuration: 2, delay: 0, options: [], animations: {
    self.purpleView.center.y = 0 //двигаем нашь purpleView вверх к оси Y
})
{
(result) in
    self.purpleView.center.y = self.view.center.y //возврашаем обратно в центр вью наш purpleView
    print("purple animated done") //выводим в консоль сообщение "анимация выполнена"
}//использовали метод UIView.animate(withDuration: длительность анимации delay: задержка до начала анимации options: массив из опций animations: функция нашей анимации completion: вторая функция выполниться после завершения блока animations:) для плавного перемещения нашего purpleView

//purpleView.center = CGPoint(x: view.frame.width / 2, y: 0) //поделили вью по X на пополам и двигаем нашь purpleView вверх к Y
UIView.animate(withDuration: 2, delay: 0, options: [.curveLinear], animations: {
    self.greenView.center.y = 0 //двигаем нашь greeView вверх к оси Y, curveLinear это с одинаковой скоростью
})
{
(_) in
    self.greenView.center.y = self.view.center.y //возврашаем обратно в центр вью наш greenView
    print("green animated done")
}
 
 }*/
