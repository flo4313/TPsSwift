//
//  PersonSet.swift
//  ProjetTest1
//
//  Created by user165108 on 14/02/2020.
//  Copyright © 2020 user164174. All rights reserved.
//

import Foundation

class PersonSet{
    private(set) var data : [Person] = [
        Person(firstname: "Florian", lastname: "Smague",job: "Etudiant", department:"IG4"),
        Person(firstname: "Thomas", lastname: "Faure", job:"Developpeur", department:"IG4"),
        Person(firstname: "Hugo", lastname: "Niort", job:"Assistant café", department:"IG4")
    ]
    
    var observer : PersonSetObserver?
    
    func add(_ person : Person){
        self.data.append(person)
        if let observer = self.observer {
            observer.dataAdded(at: self.data.count-1)
        }
    }
    
    var count : Int {
        return self.data.count
    }
    
}
