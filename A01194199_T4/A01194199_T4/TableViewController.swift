//
//  TableViewController.swift
//  A01194199_T4
//
//  Created by martha.salinas on 04/10/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class Articulo : Codable {
    var ID : Int
    var desc : String
    var cant : Int
    
    init(ID : Int, desc : String, cant : Int) {
        self.ID = ID
        self.desc = desc
        self.cant = cant
    }
}

class TableViewController: UITableViewController, protocoloArticulo {
    
    var listaArticulos : [Articulo] = []
    var auxIndice : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Articulos"
        
        let app = UIApplication.shared
        
        NotificationCenter.default.addObserver(self, selector: #selector(guardarArticulos), name: UIApplication.didEnterBackgroundNotification, object: app)

        if FileManager.default.fileExists(atPath: dataFileURL().path){
            obtenerArticulo()
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaArticulos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        cell.textLabel?.text = listaArticulos[indexPath.row].desc
        cell.detailTextLabel?.text = String(listaArticulos[indexPath.row].ID)

        return cell
    }
    
    func dataFileURL() -> URL {
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("Articulos.plist")
        
        return pathArchivo
    }
    
    //MARK: - Métodos para guardar y obtener los articulos
    
    @IBAction func guardarArticulos() {
        do{
            let data = try PropertyListEncoder().encode(listaArticulos)
            try data.write(to: dataFileURL())
        } catch {
            print("Error al guardar datos")
        }
    }
    
    func obtenerArticulo() {
        listaArticulos.removeAll()
        
        do{
            let data = try Data.init(contentsOf: dataFileURL())
            listaArticulos = try PropertyListDecoder().decode([Articulo].self, from: data)
        } catch{
            print("Error al cargar los datos del archivo")
        }
        
        tableView.reloadData()
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mostrar"{
            let vistaDetalle = segue.destination as! ViewController
            let indice = tableView.indexPathForSelectedRow!
            vistaDetalle.unArticulo = listaArticulos[indice.row]
            vistaDetalle.delegado = self
            vistaDetalle.editar = true
            auxIndice = indice.row
        } else {
            let vistaAgregar = segue.destination as! ViewController
            vistaAgregar.delegado = self
            vistaAgregar.editar = false
            auxIndice = -1
        }
    }
    
    // MARK: - Método del protocolo Agregar Articulo
    
    func agregarArticulo(art: Articulo) {
        if(auxIndice == -1){
            listaArticulos.append(art)
        } else {
            listaArticulos[auxIndice] = art
        }
        tableView.reloadData()
    }

}
