//
//  ViewController.swift
//  sample
//
//  Created by Sulaiman on 17/04/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak  var lblContent : UILabel!
    @IBOutlet weak var webView : UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
    
