//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Veronica on 3/21/16.
//  Copyright © 2016 Veronica Manduca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pais : ColeccionDePaises = ColeccionDePaises()
    var hamburguesa : ColeccionDeHamburguesa = ColeccionDeHamburguesa()
    
    @IBOutlet weak var etiquetaPais: UILabel!
    @IBOutlet weak var etiquetaHamburguesa: UILabel!
    
    @IBAction func obtenerCombinacion(sender: AnyObject) {
        etiquetaPais.text = pais.obtenPais()
        etiquetaHamburguesa.text = hamburguesa.obtenHamburguesa()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

