//
//  AnimationVC.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/5/21.
//

import UIKit
import WebKit

class AnimationVC: UIViewController {
    
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var DedenneImage: UIImageView!
    
    @IBOutlet weak var spinButton: UIButton!
    
    @IBOutlet weak var bounceButton: UIButton!
    
    @IBOutlet weak var pokemonWidth: NSLayoutConstraint!
    @IBOutlet weak var backButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleText.text = NSLocalizedString("animation_title", comment: "title")
        spinButton?.setTitle(NSLocalizedString("first_button", comment: "button"), for: .normal)
        bounceButton?.setTitle(NSLocalizedString("second_button", comment: "button"), for: .normal)
        backButton?.setTitle(NSLocalizedString("go_back_text", comment: "go back"), for: .normal)
        
    }
    
    @IBAction func spinPokemon(_ sender: Any) {
        
        if(pokemonWidth.constant <= 200){
            UIView.animate(withDuration: 2, animations: {
                self.pokemonWidth.constant += 50
                self.view.layoutIfNeeded()
            })
        }
        else{
            UIView.animate(withDuration: 2, animations: {
                self.pokemonWidth.constant -= 50
                self.view.layoutIfNeeded()
            })
        }
    }
    
    
    @IBAction func bouncePokemon(_ sender: Any) {
        let transform = CGAffineTransform.identity.translatedBy(x: 0, y: -30)
        
        UIView.animate(withDuration: 0.5, animations: {
            self.DedenneImage.transform = transform
        }, completion: {_ in
            UIView.animate(withDuration: 0.5, animations:{
                self.DedenneImage.transform = CGAffineTransform.identity.translatedBy(x: 0, y: 30)
            })
        })
        
    }
    
}
