//
//  WebViewVC.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/5/21.
//

import UIKit
import WebKit

class WebViewVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var url = "https://www.youtube.com/watch?v=BoZ0Zwab6Oc"
    
    var url2 = "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: thirdSwitch){
            loadRequest()
        }
        else{
            loadRequest2()
        }
        
        
    }
    
    func loadRequest() {
        if let Url = URL(string: url) {
            let request = URLRequest(url: Url)
            webView.load(request)
        }
    }
    
    func loadRequest2() {
        if let Url = URL(string: url2) {
            let request = URLRequest(url: Url)
            webView.load(request)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
