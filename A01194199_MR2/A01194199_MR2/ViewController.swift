//
//  ViewController.swift
//  A01194199_MR2
//
//  Created by martha.salinas on 06/10/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

protocol protocoloCategoria {
    func editarCategoria(cat: Categorias, listaCol: [UIColor])
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var tfTitulo: UITextField!
    
    var listaColores: [UIColor] = []
    var categoria : Categorias!
    var colorAux : UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfTitulo.text = categoria.titulo
        colorAux = categoria.bgColor
    }
    
    var delegado : protocoloCategoria!
    
    override func viewDidDisappear(_ animated: Bool) {
        let catego = Categorias(titulo: tfTitulo.text!, bgColor: colorAux)
        
        delegado.editarCategoria(cat: catego, listaCol: listaColores)
    }
    //MARK: - Metodos de protocólo de table view
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaColores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaColores", for: indexPath)
        
        cell.backgroundColor = listaColores[indexPath.row]
        

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        colorAux = listaColores[indexPath.row]
        listaColores[indexPath.row] = categoria.bgColor
        categoria.bgColor = colorAux
        tableView.reloadData()
    }
}

