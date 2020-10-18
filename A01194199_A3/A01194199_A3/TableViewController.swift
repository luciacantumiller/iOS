//
//  TableViewController.swift
//  A01194199_A3
//
//  Created by martha.salinas on 14/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var listaPerros = [
        Perro(raza: "Schnauzer", foto: UIImage(named: "schnauzer")),
        Perro(raza: "Golden", foto: UIImage(named: "golden")),
        Perro(raza: "Husky", foto: UIImage(named: "husky")),
        Perro(raza: "Pastor Aleman", foto: UIImage(named: "pastorAleman")),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Perros"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaPerros.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        //cell.textLabel?.text = listaPerros[indexPath.row].raza
        cell.imageView?.image = listaPerros[indexPath.row].foto!

        return cell
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaDetalle = segue.destination as! ViewController
        let indice = tableView.indexPathForSelectedRow!
        
        vistaDetalle.unPerro = listaPerros[indice.row]
    }

}
