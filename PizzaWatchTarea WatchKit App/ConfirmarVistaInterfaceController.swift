//
//  ConfirmarVistaInterfaceController.swift
//  PizzaWatchTarea
//
//  Created by Mauro Alberto Flores Almonte on 04/08/16.
//  Copyright © 2016 Mauro Alberto Flores Almonte. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmarVistaInterfaceController: WKInterfaceController {
   
    var selección:[String]?
    

    @IBOutlet var etiquetaDeSeleccion: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        selección = (context as? [String])!
        if let vistaAnterior = selección {
            var etiqueta:String = ("Haz elegido una pizza : ")
            for indice in vistaAnterior {
                etiqueta += "\(indice), "
            
            etiquetaDeSeleccion.setText(etiqueta)
                
            }
        }
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func aceptar() {
        pushControllerWithName("Final", context: nil)
    }
    
    @IBAction func cancelar() {
        _ = selección?.removeAll()
        pushControllerWithName("Tamaño", context: selección)
    }
    
}
