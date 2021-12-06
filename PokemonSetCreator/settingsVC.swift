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

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        modeSwitch.isOn = defaults.bool(forKey: ModeSwitch)
    }
    
    @IBAction func onModeSwitch(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: ModeSwitch)
        NotificationCenter.default.post(name: Notifications.modeChanged, object: nil, userInfo: nil)
    }
}
