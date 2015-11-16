//
//  vistaTipoMasaControlador.swift
//  OrdenarPizza
//
//  Created by Aaron Marquez on 15/11/15.
//  Copyright (c) 2015 Aaron Marquez. All rights reserved.
//

import UIKit

class vistaTipoMasaControlador: UIViewController {
    @IBAction func btnAccionTipoMasa(sender: UIButton) {
        datosDeLaPizzza.tipoMasa = sender.currentTitle!
    }
}
