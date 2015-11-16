//
//  vistaTamañoControlador.swift
//  OrdenarPizza
//
//  Created by Aaron Marquez on 15/11/15.
//  Copyright (c) 2015 Aaron Marquez. All rights reserved.
//

import UIKit




class vistaTamanoControlador: UIViewController{

    @IBOutlet var btnTamaño: UIButton!
    var tamaño = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnAccionPresionar(sender: UIButton) {
        datosDeLaPizzza.tamaño =  sender.currentTitle!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        //let segue = segue.destinationViewController as! vistaTipoMasaControlador
        
    }
    
}
