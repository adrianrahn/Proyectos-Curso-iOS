//
//  ViewController.swift
//  Ejercicio3
//
//  Created by Adrian Rahn on 3/2/19.
//  Copyright © 2019 Adrian Rahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelResultado: UILabel!
    
    var resultado:Float = 0
    var numeroActual:Float = 0
    var operacionActual:String = "="
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelResultado.text = "\(resultado)"
    }

    @IBAction func numeros(_ sender: UIButton) {
        numeroActual = numeroActual * 10 + Float(Int(sender.titleLabel!.text!)!)
        
        labelResultado.text = "\(numeroActual)"
    }
    
    
    @IBAction func operaciones(_ sender: UIButton) {
        
        switch operacionActual {
            
        case "=":
            resultado = numeroActual
            
        case "+":
            resultado = resultado + numeroActual
         
        case "-":
            resultado = resultado - numeroActual
         
        case "/":
            resultado = resultado / numeroActual
            
        case "*":
            resultado = resultado * numeroActual
            
            
        default:
            print("Error")
        }
        
        numeroActual = 0
        labelResultado.text = "\(resultado)"
        
        if (sender.titleLabel!.text == "=") {
            
            resultado = 0
        }
        
        operacionActual = sender.titleLabel!.text! as String
    }
    
  
    @IBAction func borrar(_ sender: UIButton) {
        
        resultado = 0
        numeroActual = 0
        operacionActual = "="
        labelResultado.text = ("\(resultado)")
        
    }
}

