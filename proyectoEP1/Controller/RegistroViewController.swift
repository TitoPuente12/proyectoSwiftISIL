//
//  RegistroViewController.swift
//  proyectoEP1
//
//  Created by alumno on 3/10/24.
//

import UIKit

let llaveUsuario = "usuario"

class Usuario:Codable{
    var nombre: String
    var contrasena: String
    var correo: String
    var documento: String
    var nroDocumento: String
    var celular: String
    
    init(nombre: String, contrasena: String, correo: String, documento: String, nroDocumento: String, celular: String) {
        self.nombre = nombre
        self.contrasena = contrasena
        self.correo = correo
        self.documento = documento
        self.nroDocumento = nroDocumento
        self.celular = celular
    }
}

class RegistroViewController: UIViewController {
    var arrayUsuarios: [Usuario] = []
    
  
    @IBOutlet weak var correoTf: UITextField!
    @IBOutlet weak var nombreTf: UITextField!
    @IBOutlet weak var contrasenaTf: UITextField!
    @IBOutlet weak var nrodocTf: UITextField!
    @IBOutlet weak var celularTf: UITextField!
    @IBOutlet weak var documentoPv: UIPickerView!
    
    let opcionesDoc = ["Dni","Pasaporte","Carnet de Extranjeria"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        documentoPv.delegate = self
        documentoPv.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
  /*  @IBAction func registrarUsuario(_ sender: Any) {
        guard let datoCorreo = correoTf.text,
              let datoNombre = nombreTf.text,
              let datoContrasena = contrasenaTf.text,
              // let datoDoc = documentoPv.
    }*/
    
    
}

extension RegistroViewController: UIPickerViewDelegate, UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return opcionesDoc.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return opcionesDoc[row]
    }
}
    
