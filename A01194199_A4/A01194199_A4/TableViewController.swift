//
//  TableViewController.swift
//  A01194199_A4
//
//  Created by martha.salinas on 24/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocoloAgregarJugador {
    

    var listaJugadores = [
        Jugador(nombre: "Beto", puntos: 1200, foto: UIImage(named: "beto")),
        Jugador(nombre: "Enrique", puntos: 1575, foto: UIImage(named: "enrique")),
        Jugador(nombre: "Abelardo", puntos: 1120, foto: UIImage(named: "abelardo")),
        Jugador(nombre: "Elmo", puntos: 1430, foto: UIImage(named: "elmo")),
        Jugador(nombre: "Lucas", puntos: 1345, foto: UIImage(named: "lucas"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        title = "Jugadores"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaJugadores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        if let foto = listaJugadores[indexPath.row].foto {
            cell.imageView?.image = foto
        } else {
            cell.imageView?.image = UIImage(named: "user")
        }
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
        
        if segue.identifier == "mostrar"{
        let vistaDetalle = segue.destination as! ViewController
        let indice = tableView.indexPathForSelectedRow!
        vistaDetalle.unJugador = listaJugadores[indice.row]
        } else {
            let vistaAgregar = segue.destination as! ViewControllerAgregar
            vistaAgregar.delegado = self
        }
    }
    
    // MARK: - Métodos del protocolo Agregar Jugador
    
    func agregarJugador(jug: Jugador) {
        listaJugadores.append(jug)
        tableView.reloadData()
    }
    

}
