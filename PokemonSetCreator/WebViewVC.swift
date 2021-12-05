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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadRequest()
    }
    
    func loadRequest() {
        if let Url = URL(string: url) {
            let request = URLRequest(url: Url)
            webView.load(request)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
