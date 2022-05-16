//
//  ViewController.swift
//  sample
//
//  Created by Sulaiman on 17/04/22.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak  var lblContent : UILabel!
    @IBOutlet weak var webView : WKWebView!
    
    
    func shopping(amount: Int){
        print(amount)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shopping(amount: 1000)
        do {
            guard let filePath = Bundle.main.path(forResource: "sample_email", ofType: "txt")
            else {
                // File Error
                print ("File reading error")
                return
            }
            
            let contents =  try String(contentsOfFile: filePath, encoding: .utf8)
            let baseUrl = URL(fileURLWithPath: filePath)
            webView.loadHTMLString(contents as String, baseURL: baseUrl)
        }
        catch {
            print ("File HTML error")
        }
    }
}
