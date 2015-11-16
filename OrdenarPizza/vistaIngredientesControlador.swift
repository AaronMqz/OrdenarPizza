//
//  vistaIngredientesControlador.swift
//  OrdenarPizza
//
//  Created by Aaron Marquez on 15/11/15.
//  Copyright (c) 2015 Aaron Marquez. All rights reserved.
//

import UIKit

class vistaIngredientesControlador: UIViewController {

   var contadorIngredientes = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datosDeLaPizzza.Ingredientes.removeAll()
        btnContinuar.hidden = true
    }

    @IBOutlet var btnContinuar: UIButton!
    
    @IBAction func swAccionSeleecionIngredientes(sender: UISwitch) {
        

            if sender.on{
                ++contadorIngredientes
                datosDeLaPizzza.Ingredientes[sender.tag] = Ingredientes[sender.tag]!
            }else{
                --contadorIngredientes
                datosDeLaPizzza.Ingredientes.removeValueForKey(sender.tag)
            }
        
        if contadorIngredientes > 5{
             --contadorIngredientes
            datosDeLaPizzza.Ingredientes.removeValueForKey(sender.tag)
            sender.on = false
            var alert = UIAlertView()
            alert.title = "Ingredientes"
            alert.message = "Solo puedes seleccionar 5 ingredientes"
            alert.addButtonWithTitle("Ok")
            alert.show()
            
        }
        
        if contadorIngredientes > 0{
            btnContinuar.hidden = false
        }else{
            btnContinuar.hidden = true
        }
        
        
    }
    
}
