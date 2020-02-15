//
//  tabPersonDataSource.swift
//  ProjetTest1
//
//  Created by user164174 on 2/11/20.
//  Copyright © 2020 user164174. All rights reserved.
//
import Foundation
import UIKit

class tabPersonDataSource: NSObject, UITableViewDataSource {
    var tabPerson : PersonSet
    let cellIdentifier = "personCellId"
    override init(){
        self.tabPerson = (UIApplication.shared.delegate as! AppDelegate).tabPerson
        super.init()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.tabPerson.count
    }
    
    func add(p: Person) {
        (UIApplication.shared.delegate as! AppDelegate).tabPerson.add(p)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PersonCellId  else {
            fatalError("The dequeued cell is not an instance of PersonTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let person = tabPerson.data[indexPath.row]
        cell.nom.text = person.lastname + " " + person.firstname
        cell.nom.sizeToFit()
        cell.dep.text = person.department
        cell.nom.sizeToFit()
        return cell
    }
    
    
}
