//
//  PokemonSprite.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/3/21.
//

import Foundation
import UIKit

enum PokemonSprite: Int, CaseIterable {
    case Bulbasaur, Ivysaur, Venusaur, Charmander, Charmeleon, Charizard, Squirtle, Wartortle, Blastoise, Caterpie, Metapod, Butterfree, Weedle, Kakuna, Beedrill, Pidgey, Pidgeotto, Pidgeot, Rattata, Raticate, Spearow, Fearow, Ekans, Arbok, Pikachu, Raichu, Sandshrew, Sandslash, Nidoran, Nidorina, Nidoqueen, Nidorino, Nidoking, Clefairy, Clefable, Vulpix, Ninetales, Jigglypuff, Wigglytuff, Zubat, Golbat, Oddish, Gloom, Vileplume, Paras, Parasect, Venonat, Venomoth, Diglett, Dugtrio, Meowth, Persian, Psyduck, Golduck, Mankey, Primeape, Growlithe, Arcanine, Poliwag, Poliwhirl, Poliwrath, Abra, Kadabra, Alakazam, Machop, Machoke, Machamp, Bellsprout, Weepinbell, Victreebel, Tentacool, Tentacruel, Geodude, Graveler, Golem, Ponyta, Rapidash, Slowpoke, Slowbro, Magnemite, Magneton, Farfetchd, Doduo, Dodrio, Seel, Dewgong, Grimer, Muk, Shellder, Cloyster, Gastly, Haunter, Gengar, Onix, Drowzee, Hypno, Krabby, Kingler, Voltorb, Electrode, Exeggcute, Exeggutor, Cubone, Marowak, Hitmonlee, Hitmonchan, Lickitung, Koffing, Weezing, Rhyhorn, Rhydon, Chansey, Tangela, Kangaskhan, Horsea, Seadra, Goldeen, Seaking, Staryu, Starmie, MrMime, Scyther, Jynx, Electabuzz, Magmar, Pinsir, Tauros, Magikarp, Gyarados, Lapras, Ditto, Eevee, Vaporeon, Jolteon, Flareon, Porygon, Omanyte, Omastar, Kabuto, Kabutops, Aerodactyl, Snorlax, Articuno, Zapdos, Moltres, Dratini, Dragonair, Dragonite, Mewtwo, Mew
    
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
        case .Charmeleon:
            return UIImage(named: "Charmeleon")
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
        case .Clefable:
            return UIImage(named: "Clefable")
        case .Vulpix:
            return UIImage(named: "Vulpix")
        case .Ninetales:
            return UIImage(named: "Ninetales")
        case .Jigglypuff:
            return UIImage(named: "Jigglypuff")
        case .Wigglytuff:
            return UIImage(named: "Wigglytuff")
        case .Zubat:
            return UIImage(named: "Zubat")
        case .Golbat:
            return UIImage(named: "Golbat")
        case .Oddish:
            return UIImage(named: "Oddish")
        case .Gloom:
            return UIImage(named: "Gloom")
        case .Vileplume:
            return UIImage(named: "Vileplume")
        case .Paras:
            return UIImage(named: "Paras")
        case .Parasect:
            return UIImage(named: "Parasect")
        case .Venonat:
            return UIImage(named: "Venonat")
        case .Venomoth:
            return UIImage(named: "Venomoth")
        case .Diglett:
            return UIImage(named: "Diglett")
        case .Dugtrio:
            return UIImage(named: "Dugtrio")
        case .Meowth:
            return UIImage(named: "Meowth")
        case .Persian:
            return UIImage(named: "Persian")
        case .Psyduck:
            return UIImage(named: "Psyduck")
        case .Golduck:
            return UIImage(named: "Golduck")
        case .Mankey:
            return UIImage(named: "Mankey")
        case .Primeape:
            return UIImage(named: "Primape")
        case .Growlithe:
            return UIImage(named: "Growlithe")
        case .Arcanine:
            return UIImage(named: "Arcanine")
        case .Poliwag:
            return UIImage(named: "Poliwag")
        case .Poliwhirl:
            return UIImage(named: "Poliwhirl")
        case .Poliwrath:
            return UIImage(named: "Poliwrath")
        case .Abra:
            return UIImage(named: "Abra")
        case .Kadabra:
            return UIImage(named: "Kadabra")
        case .Alakazam:
            return UIImage(named: "Alakazam")
        case .Machop:
            return UIImage(named: "Machop")
        case .Machoke:
            return UIImage(named: "Machoke")
        case .Machamp:
            return UIImage(named: "Machamp")
        case .Bellsprout:
            return UIImage(named: "Bellsprout")
        case .Weepinbell:
            return UIImage(named: "Weepinbell")
        case .Victreebel:
            return UIImage(named: "Victreebel")
        case .Tentacool:
            return UIImage(named: "Tentacool")
        case .Tentacruel:
            return UIImage(named: "Tentacruel")
        case .Geodude:
            return UIImage(named: "Geodude")
        case .Graveler:
            return UIImage(named: "Graveler")
        case .Golem:
            return UIImage(named: "Golem")
        case .Ponyta:
            return UIImage(named: "Ponyta")
        case .Rapidash:
            return UIImage(named: "Rapidash")
        case .Slowpoke:
            return UIImage(named: "Slowpoke")
        case .Slowbro:
            return UIImage(named: "Slowbro")
        case .Magnemite:
            return UIImage(named: "Magnemite")
        case .Magneton:
            return UIImage(named: "Magneton")
        case .Farfetchd:
            return UIImage(named: "Farfetch'd")
        case .Doduo:
            return UIImage(named: "Doduo")
        case .Dodrio:
            return UIImage(named: "Dodrio")
        case .Seel:
            return UIImage(named: "Seel")
        case .Dewgong:
            return UIImage(named: "Dewgong")
        case .Grimer:
            return UIImage(named: "Grimer")
        case .Muk:
            return UIImage(named: "Muk")
        case .Shellder:
            return UIImage(named: "Shellder")
        case .Cloyster:
            return UIImage(named: "Cloyster")
        case .Gastly:
            return UIImage(named: "Gastly")
        case .Haunter:
            return UIImage(named: "Haunter")
        case .Gengar:
            return UIImage(named: "Gengar")
        case .Onix:
            return UIImage(named: "Onix")
        case .Drowzee:
            return UIImage(named: "Drowsee")
        case .Hypno:
            return UIImage(named: "Hypno")
        case .Krabby:
            return UIImage(named: "Krabby")
        case .Kingler:
            return UIImage(named: "Kingler")
        case .Voltorb:
            return UIImage(named: "Voltorb")
        case .Electrode:
            return UIImage(named: "Electrode")
        case .Exeggcute:
            return UIImage(named: "Exeggcute")
        case .Exeggutor:
            return UIImage(named: "Exeggutor")
        case .Cubone:
            return UIImage(named: "Cubone")
        case .Marowak:
            return UIImage(named: "Marowak")
        case .Hitmonlee:
            return UIImage(named: "Hitmonlee")
        case .Hitmonchan:
            return UIImage(named: "Hitmonchan")
        case .Lickitung:
            return UIImage(named: "Lickitung")
        case .Koffing:
            return UIImage(named: "Koffing")
        case .Weezing:
            return UIImage(named: "Weezing")
        case .Rhyhorn:
            return UIImage(named: "Rhyhorn")
        case .Rhydon:
            return UIImage(named: "Rhydon")
        case .Chansey:
            return UIImage(named: "Chansey")
        case .Tangela:
            return UIImage(named: "Tangela")
        case .Kangaskhan:
            return UIImage(named: "Kangaskhan")
        case .Horsea:
            return UIImage(named: "Horsea")
        case .Seadra:
            return UIImage(named: "Seadra")
        case .Goldeen:
            return UIImage(named: "Goldeen")
        case .Seaking:
            return UIImage(named: "Seaking")
        case .Staryu:
            return UIImage(named: "Staryu")
        case .Starmie:
            return UIImage(named: "Starmie")
        case .MrMime:
            return UIImage(named: "Mr. Mime")
        case .Scyther:
            return UIImage(named: "Scyther")
        case .Jynx:
            return UIImage(named: "Jynx")
        case .Electabuzz:
            return UIImage(named: "Electabuzz")
        case .Magmar:
            return UIImage(named: "Magmar")
        case .Pinsir:
            return UIImage(named: "Pinsir")
        case .Tauros:
            return UIImage(named: "Tauros")
        case .Magikarp:
            return UIImage(named: "Magikarp")
        case .Gyarados:
            return UIImage(named: "Gyrados")
        case .Lapras:
            return UIImage(named: "Lapras")
        case .Ditto:
            return UIImage(named: "Ditto")
        case .Eevee:
            return UIImage(named: "Eevee")
        case .Vaporeon:
            return UIImage(named: "Vaporeon")
        case .Jolteon:
            return UIImage(named: "Jolteon")
        case .Flareon:
            return UIImage(named: "Flareon")
        case .Porygon:
            return UIImage(named: "Porygon")
        case .Omanyte:
            return UIImage(named: "Omanyte")
        case .Omastar:
            return UIImage(named: "Omastar")
        case .Kabuto:
            return UIImage(named: "Kabuto")
        case .Kabutops:
            return UIImage(named: "Kabutops")
        case .Aerodactyl:
            return UIImage(named: "Aerodactyl")
        case .Snorlax:
            return UIImage(named: "Snorlax")
        case .Articuno:
            return UIImage(named: "Articuno")
        case .Zapdos:
            return UIImage(named: "Zapdos")
        case .Moltres:
            return UIImage(named: "Moltres")
        case .Dratini:
            return UIImage(named: "Dratini")
        case .Dragonair:
            return UIImage(named: "Dragonair")
        case .Dragonite:
            return UIImage(named: "Dragonite")
        case .Mewtwo:
            return UIImage(named: "Mewtwo")
        case .Mew:
            return UIImage(named: "Mew")
        }
    }
    
    
    func image() -> String {
        switch self {
        case .Bulbasaur:
            return "Bulbasaur"
        case .Ivysaur:
            return "Ivysaur"
        case .Venusaur:
            return "Venusaur"
        case .Charmander:
            return "Charmander"
        case .Charmeleon:
            return "Charmeleon"
        case .Charizard:
            return "Charizard"
        case .Squirtle:
            return "Squirtle"
        case .Wartortle:
            return "Wortortle"
        case .Blastoise:
            return "Blastoise"
        case .Caterpie:
            return "Caterpie"
        case .Metapod:
            return "Metapod"
        case .Butterfree:
            return "Butterfree"
        case .Weedle:
            return "Weedle"
        case .Kakuna:
            return "Kakuna"
        case .Beedrill:
            return "Beedrill"
        case .Pidgey:
            return "Pidgey"
        case .Pidgeotto:
            return "Pidgeotto"
        case .Pidgeot:
            return "Pidgeot"
        case .Rattata:
            return "Rattata"
        case .Raticate:
            return "Raticate"
        case .Spearow:
            return "Spearow"
        case .Fearow:
            return "Fearow"
        case .Ekans:
            return "Ekans"
        case .Arbok:
            return "Arbok"
        case .Pikachu:
            return "Pikachu"
        case .Raichu:
            return "Raichu"
        case .Sandshrew:
            return "Sandshrew"
        case .Sandslash:
            return "Sandslash"
        case .Nidoran:
            return "Nidoran"
        case .Nidorina:
            return "Nidorina"
        case .Nidoqueen:
            return "Nidoqueen"
        case .Nidorino:
            return "Nidorino"
        case .Nidoking:
            return "Nidoking"
        case .Clefairy:
            return "Clefairy"
        case .Clefable:
            return "Clefable"
        case .Vulpix:
            return "Vulpix"
        case .Ninetales:
            return "Ninetales"
        case .Jigglypuff:
            return "Jigglypuff"
        case .Wigglytuff:
            return "Wigglytuff"
        case .Zubat:
            return "Zubat"
        case .Golbat:
            return "Golbat"
        case .Oddish:
            return "Oddish"
        case .Gloom:
            return "Gloom"
        case .Vileplume:
            return "Vileplume"
        case .Paras:
            return "Paras"
        case .Parasect:
            return "Parasect"
        case .Venonat:
            return "Venonat"
        case .Venomoth:
            return "Venomoth"
        case .Diglett:
            return "Diglett"
        case .Dugtrio:
            return "Dugtrio"
        case .Meowth:
            return "Meowth"
        case .Persian:
            return "Persian"
        case .Psyduck:
            return "Psyduck"
        case .Golduck:
            return "Golduck"
        case .Mankey:
            return "Mankey"
        case .Primeape:
            return "Primape"
        case .Growlithe:
            return "Growlithe"
        case .Arcanine:
            return "Arcanine"
        case .Poliwag:
            return "Poliwag"
        case .Poliwhirl:
            return "Poliwhirl"
        case .Poliwrath:
            return "Poliwrath"
        case .Abra:
            return "Abra"
        case .Kadabra:
            return "Kadabra"
        case .Alakazam:
            return "Alakazam"
        case .Machop:
            return "Machop"
        case .Machoke:
            return "Machoke"
        case .Machamp:
            return "Machamp"
        case .Bellsprout:
            return "Bellsprout"
        case .Weepinbell:
            return "Weepinbell"
        case .Victreebel:
            return "Victreebel"
        case .Tentacool:
            return "Tentacool"
        case .Tentacruel:
            return "Tentacruel"
        case .Geodude:
            return "Geodude"
        case .Graveler:
            return "Graveler"
        case .Golem:
            return "Golem"
        case .Ponyta:
            return "Ponyta"
        case .Rapidash:
            return "Rapidash"
        case .Slowpoke:
            return "Slowpoke"
        case .Slowbro:
            return "Slowbro"
        case .Magnemite:
            return "Magnemite"
        case .Magneton:
            return "Magneton"
        case .Farfetchd:
            return "Farfetch'd"
        case .Doduo:
            return "Doduo"
        case .Dodrio:
            return "Dodrio"
        case .Seel:
            return "Seel"
        case .Dewgong:
            return "Dewgong"
        case .Grimer:
            return "Grimer"
        case .Muk:
            return "Muk"
        case .Shellder:
            return "Shellder"
        case .Cloyster:
            return "Cloyster"
        case .Gastly:
            return "Gastly"
        case .Haunter:
            return "Haunter"
        case .Gengar:
            return "Gengar"
        case .Onix:
            return "Onix"
        case .Drowzee:
            return "Drowsee"
        case .Hypno:
            return "Hypno"
        case .Krabby:
            return "Krabby"
        case .Kingler:
            return "Kingler"
        case .Voltorb:
            return "Voltorb"
        case .Electrode:
            return "Electrode"
        case .Exeggcute:
            return "Exeggcute"
        case .Exeggutor:
            return "Exeggutor"
        case .Cubone:
            return "Cubone"
        case .Marowak:
            return "Marowak"
        case .Hitmonlee:
            return "Hitmonlee"
        case .Hitmonchan:
            return "Hitmonchan"
        case .Lickitung:
            return "Lickitung"
        case .Koffing:
            return "Koffing"
        case .Weezing:
            return "Weezing"
        case .Rhyhorn:
            return "Rhyhorn"
        case .Rhydon:
            return "Rhydon"
        case .Chansey:
            return "Chansey"
        case .Tangela:
            return "Tangela"
        case .Kangaskhan:
            return "Kangaskhan"
        case .Horsea:
            return "Horsea"
        case .Seadra:
            return "Seadra"
        case .Goldeen:
            return "Goldeen"
        case .Seaking:
            return "Seaking"
        case .Staryu:
            return "Staryu"
        case .Starmie:
            return "Starmie"
        case .MrMime:
            return "Mr. Mime"
        case .Scyther:
            return "Scyther"
        case .Jynx:
            return "Jynx"
        case .Electabuzz:
            return "Electabuzz"
        case .Magmar:
            return "Magmar"
        case .Pinsir:
            return "Pinsir"
        case .Tauros:
            return "Tauros"
        case .Magikarp:
            return "Magikarp"
        case .Gyarados:
            return "Gyrados"
        case .Lapras:
            return "Lapras"
        case .Ditto:
            return "Ditto"
        case .Eevee:
            return "Eevee"
        case .Vaporeon:
            return "Vaporeon"
        case .Jolteon:
            return "Jolteon"
        case .Flareon:
            return "Flareon"
        case .Porygon:
            return "Porygon"
        case .Omanyte:
            return "Omanyte"
        case .Omastar:
            return "Omastar"
        case .Kabuto:
            return "Kabuto"
        case .Kabutops:
            return "Kabutops"
        case .Aerodactyl:
            return "Aerodactyl"
        case .Snorlax:
            return "Snorlax"
        case .Articuno:
            return "Articuno"
        case .Zapdos:
            return "Zapdos"
        case .Moltres:
            return "Moltres"
        case .Dratini:
            return "Dratini"
        case .Dragonair:
            return "Dragonair"
        case .Dragonite:
            return "Dragonite"
        case .Mewtwo:
            return "Mewtwo"
        case .Mew:
            return "Mew"
        }
    }
    
}
