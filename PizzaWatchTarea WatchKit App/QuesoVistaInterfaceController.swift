//
//  QuesoVistaInterfaceController.swift
//  PizzaWatchTarea
//
//  Created by Mauro Alberto Flores Almonte on 04/08/16.
//  Copyright © 2016 Mauro Alberto Flores Almonte. All rights reserved.
//

import WatchKit
import Foundation


class QuesoVistaInterfaceController: WKInterfaceController {

    var quesoSelecionado = "Mozzarella"
    var pickerItems:[WKPickerItem]?
    var selección:[String] = []
    
    
    @IBOutlet var itemPickerQueso: WKInterfacePicker!
    
    var quesoLista: [(String, String)] = [
        ("Mozzarella", "Italiano suave"),
        ("Cheddar", "Inglés"),
        ("Parmesano", "Italiano"),
        ("Sin Queso", "Sin Queso")]
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        selección = (context as? [String])!
        _ = selección 
        
        
        pickerItems = quesoLista.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        
        itemPickerQueso.setItems(pickerItems)
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        NSLog("List Picker: \(quesoLista[value].0) selected")
        quesoSelecionado = pickerItems![value].title!
        
    }
    
    
    @IBAction func aceptarQueso() {
        if (!selección.isEmpty) {
            selección = selección.filter(){
                $0 != quesoSelecionado
            }
        }
        selección.append(quesoSelecionado)
        pushControllerWithName("IngredientesVista", context: selección)
        

    }
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
