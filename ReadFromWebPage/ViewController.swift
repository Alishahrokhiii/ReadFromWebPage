//
//  ViewController.swift
//  ReadFromWebPage
//
//  Created by Seyed Ali Shahrokhi on 1/11/1399 AP.
//  Copyright © 1399 Seyed Ali Shahrokhi. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var Webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       let url = URL(string: "https://alishahrokhi.ir")!
    
        let task = URLSession.shared.dataTask(with: url) { (data, response, erorr) in
            let content = String(data: data!, encoding: String.Encoding.utf8)
//            print(content!)
            
            self.Webview.loadHTMLString(content!, baseURL: url)
        }
            
        task.resume()
        
        
        
        
    }
 

}

