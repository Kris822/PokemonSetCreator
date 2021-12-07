//
//  FeaturesVC.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/5/21.
//

import UIKit
import WebKit

class FeaturesVC: UIViewController {
  
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var videoLink: UIButton!
    
    @IBOutlet weak var animationButton: UIButton!
    @IBOutlet weak var warningButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var modeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: ModeSwitch){
            overrideUserInterfaceStyle = .dark
        }
        else{
            overrideUserInterfaceStyle = .light
        }
        
        titleText.text = NSLocalizedString("featuresVC_text", comment: "title")
        videoLink?.setTitle(NSLocalizedString("video_text", comment: "web link"), for: .normal)
        animationButton?.setTitle(NSLocalizedString("animation_text", comment: "animate"), for: .normal)
        modeButton?.setTitle(NSLocalizedString("mode_text", comment: "animate"), for: .normal)
        warningButton?.setTitle(NSLocalizedString("warning_text", comment: "warning"), for: .normal)
        backButton?.setTitle(NSLocalizedString("go_back_text", comment: "go back"), for: .normal)
        
    }
    
    @IBAction func warningButton(_ sender: Any) {
        CuteAlert()
    }
    
    
    func CuteAlert() {
        let alertMsg = NSLocalizedString("alert_message", comment: "alert")
        let alert = UIAlertController(title: NSLocalizedString("warning", comment: "confirmation"), message: alertMsg, preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: NSLocalizedString("cancel_text", comment: "cancel"), style: .cancel)
        
        alert.addAction(cancelAction)
        
        alert.popoverPresentationController?.permittedArrowDirections = []
        alert.popoverPresentationController?.sourceView = self.view
        alert.popoverPresentationController?.sourceRect = CGRect(x: self.view.frame.midX, y: self.view.frame.midY, width: 0, height: 0)
        
        present(alert, animated: true, completion: nil)
    }
    
}
