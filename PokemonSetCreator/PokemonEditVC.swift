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
    
    @IBOutlet weak var pokemonLabel: UILabel!
    @IBOutlet weak var pokemonPicker: UIPickerView!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    var media: [NSManagedObject] = []
    
    let pokemonList = ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Ekans", "Arbok", "Pikachu", "Raichu", "Sandshrew", "Sandslash", "Nidoran", "Nidorina", "Nidoqueen", "Nidorino", "Nidoking", "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebel", "Tentacool", "Tentacruel", "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Magnemite", "Magneton", "Farfetchd", "Doduo", "Dodrio", "Seel", "Dewgong", "Grimer", "Muk", "Shellder", "Cloyster", "Gastly", "Haunter", "Gengar", "Onix", "Drowzee", "Hypno", "Krabby", "Kingler", "Voltorb", "Electrode", "Exeggcute", "Exeggutor", "Cubone", "Marowak", "Hitmonlee", "Hitmonchan", "Lickitung", "Koffing", "Weezing","Rhyhorn","Rhydon","Chansey","Tangela","Kangaskhan","Horsea","Seadra","Goldeen","Seaking","Staryu","Starmie","MrMime","Scyther","Jynx","Electabuzz","Magmar","Pinsir","Tauros","Magikarp","Gyarados","Lapras","Ditto","Eevee","Vaporeon","Jolteon","Flareon","Porygon","Omanyte","Omastar","Kabuto","Kabutops","Aerodactyl","Snorlax","Articuno","Zapdos","Moltres","Dratini","Dragonair","Dragonite","Mewtwo","Mew"]
        

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.bool(forKey: ModeSwitch){
            overrideUserInterfaceStyle = .dark
        }
        else{
            overrideUserInterfaceStyle = .light
        }
        
        pokemonPicker?.dataSource = self
        pokemonPicker?.delegate = self
        
        titleLabel.text = NSLocalizedString("editVC_title", comment: "title")
        pokemonLabel.text = NSLocalizedString("pokemon_title", comment: "pokemon")
        typeLabel.text = NSLocalizedString("type_text", comment: "type")
        levelLabel.text = NSLocalizedString("level_text", comment: "level")
        itemLabel.text = NSLocalizedString("item_text", comment: "item")
        abilityLabel.text = NSLocalizedString("ability_text", comment: "ability")
        
        saveButton?.setTitle(NSLocalizedString("save_text", comment: "the text on the button"), for: .normal)
        cancelButton?.setTitle(NSLocalizedString("cancel_text", comment: "the text on the button"), for: .normal)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func saveItem(type: String, level: String, ability: String, item: String) {
        let context = AppDelegate.cdContext
        if let entity = NSEntityDescription.entity(forEntityName: "Pokedex", in: context) {
            let pokedex = NSManagedObject(entity: entity, insertInto: context)
            pokedex.setValue(type, forKeyPath: "type")
            pokedex.setValue(level, forKeyPath: "level")
            pokedex.setValue(item, forKeyPath: "item")
            pokedex.setValue(ability, forKeyPath: "ability")
            
            pokedex.setValue(pokemonPicker.selectedRow(inComponent: 0), forKey: "sprite")
        
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

extension PokemonEditVC: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pokemonList.count
    }
    
    
    
}

extension PokemonEditVC: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return pokemonList[row]
    }
}
