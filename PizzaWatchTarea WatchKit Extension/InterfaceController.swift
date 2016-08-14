//
//  InterfaceController.swift
//  PizzaWatchTarea WatchKit Extension
//
//  Created by Mauro Alberto Flores Almonte on 03/08/16.
//  Copyright © 2016 Mauro Alberto Flores Almonte. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var tamañoSelecionado:String = "Pequeña"
    var pickerItems:[WKPickerItem]?
    var selección:[String] = []
    var modificar:Bool?
    
    @IBOutlet var itemPickerTamaño: WKInterfacePicker!
    
    var listaDeTamaños: [(String, String)] = [
        ("Pequeña", "Individual"),
        ("Mediana", "Para Parejas"),
        ("Grande", "Familiar") ]
    
   
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        pickerItems = listaDeTamaños.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
            
            }
        
        itemPickerTamaño.setItems(pickerItems)
        
        }
    
    override func willActivate() {
        super.willActivate()
        
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        if (!selección.isEmpty) {
            selección = selección.filter(){
                $0 != tamañoSelecionado
            }
        }
        
        NSLog("List Picker: \(listaDeTamaños[value].0) selected")
        tamañoSelecionado = pickerItems![value].title!
        
    }

    
        @IBAction func aceptarTamaño() {
            if (!selección.isEmpty) {
                selección = selección.filter(){
                    $0 != tamañoSelecionado
                }
            }
            selección.append(tamañoSelecionado)
                pushControllerWithName("TipoDeMasaVista", context: selección)
            
        }


        override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
