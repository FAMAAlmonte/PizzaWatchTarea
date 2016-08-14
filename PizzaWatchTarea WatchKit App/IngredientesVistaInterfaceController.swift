//
//  IngredientesVistaInterfaceController.swift
//  PizzaWatchTarea
//
//  Created by Mauro Alberto Flores Almonte on 04/08/16.
//  Copyright © 2016 Mauro Alberto Flores Almonte. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesVistaInterfaceController: WKInterfaceController {

    var ingredientes:[String]? = []
    var selección:[String]?
    
    @IBOutlet var botonAceptarIngredientes: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        selección = (context as? [String])!
        _ = selección
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func jamón(value: Bool) {
        if (value){
        ingredientes?.append("Jamón")
        selección?.append("Jamón")
        }else{
            selección! = selección!.filter(){ $0 != "Jamón"}
            ingredientes = ingredientes!.filter(){ $0 != "Jamón"}
        }
        aceptar()
    }
    
    @IBAction func Cebolla(value: Bool) {
        if (value){
            ingredientes?.append("Cebolla")
            selección?.append("Cebolla")
        }else{
            selección! = selección!.filter(){ $0 != "Cebolla"}
            ingredientes = ingredientes!.filter(){ $0 != "Cebolla"}
        }
        aceptar()
    }
    
    @IBAction func peperonni(value: Bool) {
        if (value){
            ingredientes?.append("Peperonni")
            selección?.append("Peperonni")
        }else{
            selección! = selección!.filter(){ $0 != "Peperonni"}
            ingredientes = ingredientes!.filter(){ $0 != "Peperoni"}
        }
        aceptar()
    }
    
    @IBAction func pimiento(value: Bool) {
        if (value){
            ingredientes?.append("Pimiento")
            selección?.append("Pimiento")
        }else{
            selección! = selección!.filter(){ $0 != "Pimiento"}
            ingredientes = ingredientes!.filter(){ $0 != "Pimiento"}
        }
        aceptar()

    }
    
    @IBAction func pavo(value: Bool) {
        if (value) {
            ingredientes?.append("Pavo")
            selección?.append("Pavo")
        }else{
            ingredientes = ingredientes?.filter(){ $0 != "Pavo"}
            selección = selección?.filter(){ $0 != "Pavo"}
        }
        aceptar()
    }
    
    @IBAction func piña(value: Bool) {
        if (value) {
            ingredientes?.append("Piña")
            selección?.append("Piña")
        }else{
            ingredientes = ingredientes?.filter(){ $0 != "Piña"}
            selección = selección?.filter(){ $0 != "Piña"}
        }
        aceptar()
    }
    @IBAction func salchicha(value: Bool) {
        if (value) {
            ingredientes?.append("Salchicha")
            selección?.append("Salchicha")
        }else{
            ingredientes = ingredientes?.filter(){ $0 != "Salchicha"}
            selección = selección?.filter(){ $0 != "Salchicha"}
        }
        aceptar()
    }
    @IBAction func anchoa(value: Bool) {
        if (value) {
            ingredientes?.append("Anchoa")
            selección?.append("Anchoa")
        }else{
            ingredientes = ingredientes?.filter(){ $0 != "Anchoa"}
            selección = selección?.filter(){ $0 != "Anchoa"}
        }
        aceptar()
    }
    
    @IBAction func aceituna(value: Bool) {
        if (value) {
            ingredientes?.append("Aceituna")
            selección?.append("Aceituna")
        }else{
            ingredientes = ingredientes?.filter(){ $0 != "Aceituna"}
            selección = selección?.filter(){ $0 != "Aceituna"}
        }
        aceptar()
    }
    
    @IBAction func champiñon(value: Bool) {
        if (value) {
            ingredientes?.append("Champiñon")
            selección?.append("Champiñon")
        }else{
            ingredientes = ingredientes?.filter(){ $0 != "Champiñon"}
            selección = selección?.filter(){ $0 != "Champiñon"}
        }
        aceptar()
    }
    
    @IBAction func atun(value: Bool) {
        if (value) {
            ingredientes?.append("Atún")
            selección?.append("Atún")
        }else{
            ingredientes = ingredientes?.filter(){ $0 != "Atún"}
            selección = selección?.filter(){ $0 != "Atún"}
        }
        aceptar()
    }
    
    @IBAction func carnes(value: Bool) {
        if value {
            ingredientes?.append("Tres Carnes")
            selección?.append("Tres Carnes")
        }else{
            ingredientes = ingredientes?.filter(){ $0 != "Tres Carnes"}
            selección = selección?.filter(){ $0 != "Tres Carnes"}
        }
        aceptar()
    }
    
    func aceptar() {
        if ingredientes?.count==0 {
            botonAceptarIngredientes.setHidden(true)
        }else{
            botonAceptarIngredientes.setHidden(false)
        }
    }
    
    @IBAction func aceptarIngredientes() {
        pushControllerWithName("ConfirmarVista", context: selección)
        
        
    }
    
    
    

}
