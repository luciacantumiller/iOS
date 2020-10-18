//
//  TableViewController.swift
//  A01194199_MR2
//
//  Created by martha.salinas on 06/10/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class Categorias {
    var titulo : String
    var bgColor : UIColor
    
    init(titulo : String, bgColor : UIColor) {
        self.titulo = titulo
        self.bgColor = bgColor
    }
}

class TableViewController: UITableViewController, protocoloCategoria {
    
    var listaCategorias : [Categorias] = []
    var coloresParaElegir = [UIColor.blue.withAlphaComponent(0.5), UIColor.green.withAlphaComponent(0.5), UIColor.magenta.withAlphaComponent(0.5), UIColor.red.withAlphaComponent(0.5), UIColor.yellow.withAlphaComponent(0.5), UIColor.orange.withAlphaComponent(0.5), UIColor.cyan.withAlphaComponent(0.5)]
    var auxIndiceCat = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Categorías"
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaCategorias.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        cell.textLabel?.text = listaCategorias[indexPath.row].titulo
        cell.backgroundColor = listaCategorias[indexPath.row].bgColor

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            coloresParaElegir.append(listaCategorias[indexPath.row].bgColor)
            listaCategorias.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
        if(segue.identifier == "editar"){
            let vistaEditar = segue.destination as! ViewController
            let indice = tableView.indexPathForSelectedRow!
            auxIndiceCat = indice.row
            vistaEditar.categoria = listaCategorias[indice.row]
            vistaEditar.listaColores = coloresParaElegir
            vistaEditar.delegado = self
            
        }
    }
    

    @IBAction func agregarCategoría(_ sender: Any) {
        if(coloresParaElegir.count != 0){
            let categoria = Categorias(titulo: "Nueva Categoría", bgColor: coloresParaElegir[0])
            coloresParaElegir.remove(at: 0)
            listaCategorias.append(categoria)
            tableView.reloadData()
        }
    }
    
    // MARK: - Método del protocolo Agregar Articulo
    
    func editarCategoria(cat: Categorias, listaCol: [UIColor]) {
        if(auxIndiceCat != -1){
            listaCategorias[auxIndiceCat] = cat
            coloresParaElegir = listaCol
        }
        tableView.reloadData()
    }
}
