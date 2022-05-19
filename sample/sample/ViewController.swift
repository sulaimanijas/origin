//
//  ViewController.swift
//  sample
//
//  Created by Sulaiman on 17/04/22.
//

import UIKit
import WebKit
 @objc protocol getAgeDelegate{
    
   @objc  func getAge(name : Int , color : UIColor)

}
class ViewController: UIViewController,getAgeDelegate {
    var models = [String]()
    var obj1 = "sulaiman"
    var obj2 = "syed"
    var obj3 = "ijas"
    let subclass = ViewController()
    @IBOutlet weak  var lblContent : UILabel!
    @IBOutlet weak var webView : WKWebView!
    @IBOutlet weak var img : UIImageView!
    @IBOutlet weak  var lbl : UILabel!
   var numbers = [1,23,4,5,7,8,83,91,92,74,622]
    func getAge(name: Int, color: UIColor) {
        // print(name)
        print(name)
        print(color)
        //lbl.text = name
        switch name {
        case 0:
            print("colour is red")
        case 1:
            print("colour is yellow")
        case 3 :
            print("colour is cyan")
        default:
            print("name")
        }
        //view.backgroundColor = color
    }
    @IBAction func btn(_sender : UIButton){
        
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "_ViewController") as! _ViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
//    func shopping(amount: Int){
//        print(amount)
//    }
    
//    func cal(a: Int , b: Int , sign :Int){
//        switch sign {
//        case 10:
//            print(a+b)
//        default:
//            print("null")
//        }
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        getAge(name: 5, color: .cyan)
        models.append("syed")
        models.append("tas")
        models.append("ijas")
        print(models)
        models = models.filter({$0.starts(with: "s")})
        print((models))
       // numbers = numbers.sorted(by: <)
        numbers = numbers.sorted(by: >)
        print(numbers)
        print("opened")
        subclass.obj1 = "ss"
        subclass.obj2 = "lkn"
        print(subclass.obj1)
        //print(numbers)
//        shopping(amount: 1000)
//       cal(a: 5, b: 10, sign: 6)
      // 1
//        do {
//            guard let filePath = Bundle.main.path(forResource: "sample_email", ofType: "txt")
//            else {
//                // File Error
//                print ("File reading error")
//                return
//            }
//
//            let contents =  try String(contentsOfFile: filePath, encoding: .utf8)
//            let baseUrl = URL(fileURLWithPath: filePath)
//            webView.loadHTMLString(contents as String, baseURL: baseUrl)
//        }
//        catch {
//            print ("File HTML error")
//        }
    }
}
