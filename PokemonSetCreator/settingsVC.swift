//
//  settingsVC.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/5/21.
//

import UIKit
import WebKit

class settingsVC: UIViewController {
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var modeSwitch: UISwitch!
    @IBOutlet weak var treatSwitch: UISwitch!
    @IBOutlet weak var questionSwitch: UISwitch!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var secondText: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        backButton?.setTitle(NSLocalizedString("go_back_text", comment: "go back"), for: .normal)
        
        titleText.text = NSLocalizedString("switch_text", comment: "switch")
        secondText.text = NSLocalizedString("third_text", comment: "switch")
        
        modeSwitch.isOn = defaults.bool(forKey: ModeSwitch)
        treatSwitch.isOn = defaults.bool(forKey: specialTreat)
        questionSwitch.isOn = defaults.bool(forKey: thirdSwitch)
        
        if UserDefaults.standard.bool(forKey: ModeSwitch){
            overrideUserInterfaceStyle = .dark
        }
        else{
            overrideUserInterfaceStyle = .light
        }
    }
    
    @IBAction func onModeSwitch(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: ModeSwitch)
        let test = defaults.bool(forKey: ModeSwitch).description
        print(test)
        NotificationCenter.default.post(name: Notifications.modeChanged, object: nil, userInfo: nil)
        
        if UserDefaults.standard.bool(forKey: ModeSwitch){
            overrideUserInterfaceStyle = .dark
        }
        else{
            overrideUserInterfaceStyle = .light
        }
    }
    
    
    @IBAction func onSpecialTreat(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: specialTreat)
        
        let test = defaults.bool(forKey: specialTreat).description
        print(test)
        
        NotificationCenter.default.post(name: Notifications.modeChanged, object: nil, userInfo: nil)
        
    }
    @IBAction func onThirdSwitch(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: thirdSwitch)
        
        let test = defaults.bool(forKey: specialTreat).description
        print(test)
        
        NotificationCenter.default.post(name: Notifications.modeChanged, object: nil, userInfo: nil)
    }
    
}
