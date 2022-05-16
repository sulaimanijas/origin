//
//  ChildViewController.swift
//  sample
//
//  Created by Sulaiman on 16/05/22.
//

import UIKit

class ChildViewController: ViewController {
    var student  = ChildViewController()
    func eat (paybill : Int){
        print(paybill)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        shopping(amount: 20000)
        eat(paybill: 2000)
        // Do any additional setup after loading the view.
    }
    override func shopping(amount: Int) {
        print(amount)
    }
}
//
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


