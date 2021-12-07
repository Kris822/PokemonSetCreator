//
//  ViewController.swift
//  PokemonSetCreator
//
//  Created by Lee, Christopher on 12/2/21.
//

import UIKit
import CoreData

class TeamTableView: UITableViewController {

    //let magmaColor = UIColor(red: 153/255, green: 0/255, blue: 0/255, alpha: 1)
    
    var media: [NSManagedObject] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: ModeSwitch){
            overrideUserInterfaceStyle = .dark
            self.navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        }
        else{
            overrideUserInterfaceStyle = .light
            self.navigationController?.navigationBar.overrideUserInterfaceStyle = .light
        }
        
        self.title = NSLocalizedString("pokemon_title", comment: "title")
        self.tableView.rowHeight = 100
            //NSLocalizedString("app_title", comment: "statistics")
        // Do any additional setup after loading the view.
        self.registerTableViewCells()
        readData()
    }
    
    func deletionAlert(title: String, completion: @escaping (UIAlertAction) -> Void) {
        let alertMsg = NSLocalizedString("confirmation_text", comment: "confirmation")
        let alert = UIAlertController(title: NSLocalizedString("warning_text", comment: "warning"), message: alertMsg, preferredStyle: .actionSheet)
        
        let deleteAction = UIAlertAction(title: NSLocalizedString("delete_text", comment: "delete"), style: .destructive, handler: completion)
        let cancelAction = UIAlertAction(title: NSLocalizedString("cancel_text", comment: "cancel"), style: .cancel)
        
        alert.addAction(deleteAction)
        alert.addAction(cancelAction)
        
        alert.popoverPresentationController?.permittedArrowDirections = []
        alert.popoverPresentationController?.sourceView = self.view
        alert.popoverPresentationController?.sourceRect = CGRect(x: self.view.frame.midX, y: self.view.frame.midY, width: 0, height: 0)
        
        present(alert, animated: true, completion: nil)
    }

    private func registerTableViewCells(){
        let textFieldCell = UINib(nibName: "pokemonCell", bundle: nil)
        self.tableView.register(textFieldCell, forCellReuseIdentifier: "pokemonCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return media.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell") as? pokemonCell else {
            fatalError("pokemonCell")
        }
        
        if let pokedex = media[indexPath.row] as? Pokedex {
            cell.update(with: pokedex)
        }
        
        if UserDefaults.standard.bool(forKey: ModeSwitch){
            cell.overrideUserInterfaceStyle = .dark
        }
        else{
            cell.overrideUserInterfaceStyle = .light
        }
        
        //cell.imageCell.image = UIImage(named: "w")

        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if let pokedex = media[indexPath.row] as? Pokedex {
                deletionAlert(title: "title", completion: { _ in
                    self.deleteItem(pokedex: pokedex)
                })
            }
        }
    }
    
    
    func readData() {
        let context = AppDelegate.cdContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Pokedex")
        do {
            media = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch requested item. \(error), \(error.userInfo)")
        }
        tableView.reloadData()
    }
    
    func deleteItem(pokedex: Pokedex) {
        let context = AppDelegate.cdContext
        if let _ = media.firstIndex(of: pokedex)  {
            context.delete(pokedex)
            do {
                try context.save()
            } catch let error as NSError {
                print("Could not delete the item. \(error), \(error.userInfo)")
            }
        }
        readData()
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        readData()
        if UserDefaults.standard.bool(forKey: ModeSwitch){
            overrideUserInterfaceStyle = .dark
            self.navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        }
        else{
            overrideUserInterfaceStyle = .light
            self.navigationController?.navigationBar.overrideUserInterfaceStyle = .light
        }
        tableView.reloadData()
    }

    @IBAction func onEditButton(_ sender: UIBarButtonItem) {
        setEditing(!isEditing, animated: true)
    }
    

}

