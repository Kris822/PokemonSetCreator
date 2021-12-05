//
//  pokemonCell.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/3/21.
//

import UIKit

class pokemonCell: UITableViewCell {

    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var levelLabel: UILabel!
    
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var abilityLabel: UILabel!
    
    let magmaColor = UIColor(red: 255/255, green: 153/255, blue: 153/255, alpha: 1)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with pokedex: Pokedex){
        if let type = pokedex.value(forKey: "type") as? String,
           let level = pokedex.value(forKey: "level") as? String,
           let item = pokedex.value(forKey: "item") as? String,
           let ability = pokedex.value(forKey: "ability") as? String,
           let sprite = pokedex.value(forKey: "sprite") as? Int{
            
            backgroundColor = magmaColor
            
            
            typeLabel?.text = type
            levelLabel?.text = level
            itemLabel?.text = item
            abilityLabel?.text = ability
            
            if let pokemonPicture = PokemonSprite(rawValue: sprite) {
                pokemonImage.image = pokemonPicture.image()
            }
            
        }
    }
    
}

