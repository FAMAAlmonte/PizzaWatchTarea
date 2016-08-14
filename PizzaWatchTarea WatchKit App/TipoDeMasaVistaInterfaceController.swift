//
//  TipoDeMasaVistaInterfaceController.swift
//  PizzaWatchTarea
//
//  Created by Mauro Alberto Flores Almonte on 04/08/16.
//  Copyright © 2016 Mauro Alberto Flores Almonte. All rights reserved.
//

import WatchKit
import Foundation


class TipoDeMasaVistaInterfaceController: WKInterfaceController {
    
    var masaSelecionada = "Delgada"
    var pickerItems:[WKPickerItem]?
    var selección:[String] = []
    var modificar:Bool?

    
    @IBOutlet var itemPickerMasa: WKInterfacePicker!

    var masaLista: [(String, String)] = [
        ("Delgada", "Menos Calorias"),
        ("Crujiente", "Tostada"),
        ("Gruesa", "Esponjada") ]

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        selección = (context as? [String] )!
        _ = selección         
        
        pickerItems = masaLista.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        
        itemPickerMasa.setItems(pickerItems)
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        NSLog("List Picker: \(masaLista[value].0) selected")
        masaSelecionada = pickerItems![value].title!
        
    }
    
    
    @IBAction func aceptarMasa() {
        if (!selección.isEmpty) {
            selección = selección.filter(){
                $0 != masaSelecionada
            }
        }
        selección.append(masaSelecionada)
        pushControllerWithName("QuesoVista", context: selección)
        
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
