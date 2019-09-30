//
//  RocketInfoTableViewController.swift
//  Foguetes
//
//  Created by Aluno Mack on 10/09/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class RocketInfoTableViewController: UITableViewController {

    
    var foguetes:[String] = ["Falcon 9","VLS","Angara","Ariane 5"]
    
    var foguetes_img:[String] = ["img_falcon9","img_vls","img_angara","img_ariane5"]
    
    var foguetes_nacionalidade:[String] = ["eua","brasil","russia","europa"]
    
    var foguetes_data:[String] = ["06/02/2018","02/12/1997","05/05/2013","30/10/1997"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foguetes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RocketLabel", for: indexPath) as! RockDataTableViewCell

        //cell.textLabel?.text = "Seção \(indexPath.section) Linha \(indexPath.row)"
        
        cell.NameRocket?.text = foguetes[indexPath.row]
        cell.DateRocket?.text = foguetes_data[indexPath.row]
        cell.FlagRocket?.image = UIImage(named: "flag_\(foguetes_nacionalidade[indexPath.row])")
        cell.ImageRocket?.image = UIImage(named:"rocket_\(foguetes_nacionalidade[indexPath.row])")
        
        
        
        

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetalhesFoguetesSegue"  {
            if let indexPath = tableView.indexPathForSelectedRow{
                
            if let pag = segue.destination as? DetalhesViewController{
                
                    pag.Nome = "\(foguetes[indexPath.row])"
                
                    pag.ImagemPath = UIImage(named:"rocket_\(foguetes_nacionalidade[indexPath.row])")
                
                    pag.Pais = "\(foguetes_nacionalidade[indexPath.row])"
                
                    pag.Ano = "\(foguetes_data[indexPath.row])"

            }
            }
    
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

