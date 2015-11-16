//
//  vistaConfirmacionControlador.swift
//  OrdenarPizza
//
//  Created by Aaron Marquez on 15/11/15.
//  Copyright (c) 2015 Aaron Marquez. All rights reserved.
//

import UIKit

class vistaConfirmacionControlador: UIViewController {

    @IBOutlet var lblTamano: UILabel!
    @IBOutlet var lblTipoMasa: UILabel!
    @IBOutlet var lblTipoQueso: UILabel!
    @IBOutlet var lblIngredientes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblIngredientes.numberOfLines = 0
        lblIngredientes.sizeToFit()
        
        // Do any additional setup after loading the view, typically from a nib.
        lblTamano.text = datosDeLaPizzza.tamaño
        lblTipoMasa.text = datosDeLaPizzza.tipoMasa
        lblTipoQueso.text = datosDeLaPizzza.tipoQueso
        lblIngredientes.text = concatenarIngredientes()
    }
    
    func concatenarIngredientes() -> String {
        var valoresIngrediente = ""
        var inicio = 0
    
        for ingrediente in datosDeLaPizzza.Ingredientes.values{
            if inicio == 0 {
                valoresIngrediente = ingrediente
                inicio = 1
            }else{
                valoresIngrediente = valoresIngrediente + "\n" + ingrediente
            }
        }
        return valoresIngrediente
    }
    
    @IBAction func btnConfirmarOrden(sender: AnyObject) {
        var alert = UIAlertView()
        alert.title = "Ordenar Pizza"
        alert.message = "Tú Orden Fue Exitosa"
        alert.addButtonWithTitle("Ok")
        alert.show()
    }
    
}
