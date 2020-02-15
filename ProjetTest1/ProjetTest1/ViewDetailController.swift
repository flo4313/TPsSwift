//
//  ViewDetailController.swift
//  ProjetTest1
//
//  Created by user165108 on 11/02/2020.
//  Copyright © 2020 user164174. All rights reserved.
//

import UIKit

class ViewDetailController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var lastname: UILabel!
    @IBOutlet weak var profession: UILabel!
    @IBOutlet weak var dep: UILabel!
    
    var person : Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profession.translatesAutoresizingMaskIntoConstraints = false
        self.name.text = "First name : "+self.person.firstname
        self.lastname.text = "Last name : "+self.person.lastname
        self.profession.text = "Job : "+self.person.job
        self.dep.text = "Department: "+self.person.department
        self.name.sizeToFit()
        self.lastname.sizeToFit()
        self.profession.sizeToFit()
        self.dep.sizeToFit()
    }
    
    

    
    
}

