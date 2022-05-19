//
//  2ViewController.swift
//  sample
//
//  Created by Sulaiman on 18/05/22.
//

import UIKit

class _ViewController: UIViewController {
    var delegate : getAgeDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
//    override func viewDidAppear(_ animated: Bool) {
//        print("opened")
//        let vcc = storyboard?.instantiateViewController(withIdentifier: "thirdViewController") as! thirdViewController
//        self.navigationController?.pushViewController(vcc, animated: true)
//    }
    @IBAction func btnn(_sender : UIButton){
        
        let vcc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vcc
                                                      , animated: true)
        self.delegate?.getAge(name: 1
                              , color: .red)
    }
    override func viewDidAppear(_ animated: Bool) {
       // self.delegate?.getAge(image: UIImage(named: "dump")!, color: .red)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
