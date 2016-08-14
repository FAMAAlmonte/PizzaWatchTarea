//
//  ModificarVistaInterfaceController.swift
//  PizzaWatchTarea
//
//  Created by Mauro Alberto Flores Almonte on 06/08/16.
//  Copyright © 2016 Mauro Alberto Flores Almonte. All rights reserved.
//

import WatchKit
import Foundation


class ModificarVistaInterfaceController: WKInterfaceController {

    var selección:[String] = []
    var modificar:Bool?
    
    @IBAction func modificarTamaño() {
        pushControllerWithName("Tamaño", context: selección )
    }
    
    @IBAction func modificarMasa() {
        pushControllerWithName("TipoDeMasaVista", context: selección)
    }
    
    @IBAction func modificarQueso() {
        pushControllerWithName("QuesoVista", context: selección)
    }
    @IBAction func modificarIngredientes() {
        pushControllerWithName("IngredientesVista", context: selección)
    }
    @IBAction func Aceptar() {
        pushControllerWithName("ConfirmarVista", context: selección)
    }
    @IBAction func Cancelar() {
        pushControllerWithName("Tamaño", context: selección)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        selección = (context as? [String] )!
        _ = selección
        modificar = true
                
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    
}
