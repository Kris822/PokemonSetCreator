//
//  Constants.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/5/21.
//

import Foundation

let ModeSwitch = "modeSwitch"
let specialTreat = "specialTreat"
let thirdSwitch = "thirdSwitch"

public struct Notifications {
    public static let modeChanged = Notification.Name(rawValue: "Light Mode/ Dark Mode Change Notification")
    public static let somethingChanged = Notification.Name(rawValue: "Special Treat may or may not be active")
    public static let somethingMaybeChanged = Notification.Name(rawValue: "Has Something Changed?")
}
