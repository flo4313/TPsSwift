//
//  AddPersonController.swift
//  ProjetTest1
//
//  Created by user165108 on 12/02/2020.
//  Copyright © 2020 user164174. All rights reserved.
//

import Foundation
//
//  ViewDetailController.swift
//  ProjetTest1
//
//  Created by user165108 on 11/02/2020.
//  Copyright © 2020 user164174. All rights reserved.
//

import UIKit

class AddPersonController: UIViewController {
    
    var model : PersonSet!
    
    
    @IBAction func quit(_ sender: Any) {
    }
    @IBOutlet weak var firstnameInput: UITextField!
    @IBOutlet weak var lastnameInput: UITextField!
    @IBOutlet weak var jobInput: UITextField!
    @IBOutlet weak var departmentInput: UITextField!
    
    @IBAction func returnMenu(_ sender: Any) {

        model.add(Person(firstname: firstnameInput.text!, lastname: lastnameInput.text!,job:jobInput.text!, department: departmentInput.text!))

        
        dismiss(animated: true, completion: nil)
    
    
    }
    
}

