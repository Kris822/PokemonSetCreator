//
//  PokemonSprite.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/3/21.
//

import Foundation
import UIKit

enum PokemonSprite: Int, CaseIterable {
    case Bulbasaur, Ivysaur, Venusaur, Charmander, Charmeleon, Charizard, Squirtle, Wartortle, Blastoise, Caterpie, Metapod, Butterfree, Weedle, Kakuna, Beedrill, Pidgey, Pidgeotto, Pidgeot, Rattata, Raticate, Spearow, Fearow, Ekans, Arbok, Pikachu, Raichu, Sandshrew, Sandslash, Nidoran, Nidorina, Nidoqueen, Nidorino, Nidoking, Clefairy, Clefable, Vulpix, Ninetales, Jigglypuff, Wigglytuff, Zubat, Golbat, Oddish, Gloom, Vileplume, Abra, Kadabra, Alakazam, Machop, Machoke, Machamp, Grimer, Muk, Voltorb, Electrode, Rhyhorn, Rhydon, Magikarp, Gyarados, Lapras, Ditto, Eevee, Vaporeon, Jolteon, Flareon, Porygon, Omanyte, Omastar, Kabuto, Kabutops, Aerodactyl, Snorlax, Articuno, Zapdos, Moltres, Dratini, Dragonair, Dragonite, Mewtwo, Mew
    
    /*func weather() -> String {
        switch self {
        case .sunny:
            return NSLocalizedString("sunny_text", comment: "it is sunny")
        case .cloudy:
            return NSLocalizedString("cloudy_text", comment: "it is cloudy")
        case .raining:
            return NSLocalizedString("raining_text", comment: "it is raining")
        case .snowing:
            return NSLocalizedString("snowing_text", comment: "it is snowing")
        }
    }*/
    
    
    
    func image() -> UIImage? {
        switch self {
        case .Bulbasaur:
            return UIImage(named: "Bulbasaur")
        case .Ivysaur:
            return UIImage(named: "Ivysaur")
        case .Venusaur:
            return UIImage(named: "Venusaur")
        case .Charmander:
            return UIImage(named: "Charmander")
        case .Charizard:
            return UIImage(named: "Charizard")
        case .Squirtle:
            return UIImage(named: "Squirtle")
        case .Wartortle:
            return UIImage(named: "Wortortle")
        case .Blastoise:
            return UIImage(named: "Blastoise")
        case .Caterpie:
            return UIImage(named: "Caterpie")
        case .Metapod:
            return UIImage(named: "Metapod")
        case .Butterfree:
            return UIImage(named: "Butterfree")
        case .Weedle:
            return UIImage(named: "Weedle")
        case .Kakuna:
            return UIImage(named: "Kakuna")
        case .Beedrill:
            return UIImage(named: "Beedrill")
        case .Pidgey:
            return UIImage(named: "Pidgey")
        case .Pidgeotto:
            return UIImage(named: "Pidgeotto")
        case .Pidgeot:
            return UIImage(named: "Pidgeot")
        case .Rattata:
            return UIImage(named: "Rattata")
        case .Raticate:
            return UIImage(named: "Raticate")
        case .Spearow:
            return UIImage(named: "Spearow")
        case .Fearow:
            return UIImage(named: "Fearow")
        case .Ekans:
            return UIImage(named: "Ekans")
        case .Arbok:
            return UIImage(named: "Arbok")
        case .Pikachu:
            return UIImage(named: "Pikachu")
        case .Raichu:
            return UIImage(named: "Raichu")
        case .Sandshrew:
            return UIImage(named: "Sandshrew")
        case .Sandslash:
            return UIImage(named: "Sandslash")
        case .Nidoran:
            return UIImage(named: "Nidoran")
        case .Nidorina:
            return UIImage(named: "Nidorina")
        case .Nidoqueen:
            return UIImage(named: "Nidoqueen")
        case .Nidorino:
            return UIImage(named: "Nidorino")
        case .Nidoking:
            return UIImage(named: "Nidoking")
        case .Clefairy:
            return UIImage(named: "Clefairy")
        }
    }
}
