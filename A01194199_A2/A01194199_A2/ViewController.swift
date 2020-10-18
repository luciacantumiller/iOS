//
//  ViewController.swift
//  A01194199_A2
//
//  Created by user181014 on 9/7/20.
//  Copyright © 2020 user181014. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var listaJugadores = [
        Jugador(nombre: "Beto", puntos: 1200, foto: UIImage(named: "beto")),
        Jugador(nombre: "Enrique", puntos: 1575, foto: UIImage(named: "enrique")),
        Jugador(nombre: "Abelardo", puntos: 1120, foto: UIImage(named: "abelardo")),
        Jugador(nombre: "Elmo", puntos: 1430, foto: UIImage(named: "elmo")),
        Jugador(nombre: "Lucas", puntos: 1345, foto: UIImage(named: "lucas"))
    ]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Jugadores"
        // Do any additional setup after loading the view.
    }
    
    //MARK: Metodos de protocolo de Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaJugadores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda")!
        
        celda.textLabel?.text = listaJugadores[indexPath.row].nombre
        celda.detailTextLabel?.text = String(listaJugadores[indexPath.row].puntos)
        celda.imageView?.image = listaJugadores[indexPath.row].foto
        
        return celda
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDetalle = segue.destination as! ViewControllerDetalle
        let indice = tableView.indexPathForSelectedRow!
        
        vistaDetalle.unJugador = listaJugadores[indice.row]
    }


}

