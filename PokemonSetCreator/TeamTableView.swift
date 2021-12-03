//
//  ViewController.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/2/21.
//

import UIKit

class TeamTableView: UITableViewController {

    let magmaColor = UIColor(red: 1201/25, green: 50/255, blue: 50/255, alpha: 1)
    
    var media: [NSManagedObject] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = magmaColor
        self.title = "PokemonSetCreator"
        self.tableView.rowHeight = 100
            //NSLocalizedString("app_title", comment: "statistics")
        // Do any additional setup after loading the view.
        self.registerTableViewCells()
        readData()
    }

    private func registerTableViewCells(){
        let textFieldCell = UINib(nibName: "WordCell", bundle: nil)
        self.tableView.register(textFieldCell, forCellReuseIdentifier: "WordCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return media.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell") as? WordCell else {
            fatalError("WordCell")
        }
        
        if let entry = media[indexPath.row] as? Entry {
            cell.update(with: entry)
        }
        
        cell.imageCell.image = UIImage(named: "w")

        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if let entry = media[indexPath.row] as? Entry, let title = entry.title {
                deletionAlert(title: title, completion: { _ in
                    self.deleteItem(entry: entry)
                })
            }
        }
    }
    
    
    func readData() {
        let context = AppDelegate.cdContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Entry")
        do {
            media = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch requested item. \(error), \(error.userInfo)")
        }
        tableView.reloadData()
    }
    

}

