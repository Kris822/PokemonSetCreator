//
//  PokemonEditVC.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/3/21.
//

import Foundation
import UIKit
import CoreData

class PokemonEditVC: UIViewController{
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var typeField: UITextField!
    
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var levelField: UITextField!
    
    @IBOutlet weak var abilityLabel: UILabel!
    @IBOutlet weak var abilityField: UITextField!
    
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var itemField: UITextField!
    
    
    var media: [NSManagedObject] = []
    
    let magmaColor = UIColor(red: 255/255, green: 153/255, blue: 153/255, alpha: 1)

    override func viewDidLoad() {
        self.view.backgroundColor = magmaColor
    }
    
    func saveItem(type: String, level: String, ability: String, item: String) {
        let context = AppDelegate.cdContext
        if let entity = NSEntityDescription.entity(forEntityName: "Pokedex", in: context) {
            let pokedex = NSManagedObject(entity: entity, insertInto: context)
            pokedex.setValue(type, forKeyPath: "type")
            pokedex.setValue(level, forKeyPath: "level")
            pokedex.setValue(item, forKeyPath: "item")
            pokedex.setValue(ability, forKeyPath: "ability")
        
            do {
                try context.save()
            } catch let error as NSError {
                print("Could not save the item. \(error), \(error.userInfo)")
            }
        }
    }
    
    @IBAction func onSave(_ sender: Any) {
        if let type = typeField?.text, let level = levelField?.text, let ability = abilityField?.text, let item = itemField?.text {
            saveItem(type: type, level: level, ability: ability, item: item)
        }
        presentingViewController?.dismiss(animated: true)
    }
    
    
    @IBAction func onCancel(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
}
