//
//  Person.swift
//  ProjetTest1
//
//  Created by user164174 on 2/11/20.
//  Copyright © 2020 user164174. All rights reserved.
//

import Foundation

class Person {
    var firstname : String;
    var lastname : String;
    var job : String;
    var department : String;
    
    init(firstname : String, lastname : String, job : String, department : String){
        self.firstname = firstname;
        self.lastname = lastname;
        self.job = job;
        self.department = department;
    }
}
