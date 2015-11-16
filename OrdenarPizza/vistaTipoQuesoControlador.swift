//
//  vistaTipoQuesoControlador.swift
//  OrdenarPizza
//
//  Created by Aaron Marquez on 15/11/15.
//  Copyright (c) 2015 Aaron Marquez. All rights reserved.
//

import UIKit

class vistaTipoQuesoControlador: UIViewController {


    @IBAction func btnAccionTipoQueso(sender: UIButton) {
        datosDeLaPizzza.tipoQueso = sender.currentTitle!
    }
    
}
