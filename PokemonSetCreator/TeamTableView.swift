//
//  ViewController.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/2/21.
//

import UIKit

class TeamTableView: UITableViewController {

    let magmaColor = UIColor(red: 1201/25, green: 50/255, blue: 50/255, alpha: 1)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = magmaColor
        self.title = "PokemonSetCreator"
            //NSLocalizedString("app_title", comment: "statistics")
        // Do any additional setup after loading the view.
    }


}

