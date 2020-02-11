//
//  tabPersonDataSource.swift
//  ProjetTest1
//
//  Created by user164174 on 2/11/20.
//  Copyright © 2020 user164174. All rights reserved.
//

import UIKit

class tabPersonDataSource: NSObject, UITableViewDataSource {
    let tabPerson : [Person]
    override init(){
        self.tabPerson = (UIApplication.shared.delegate as! AppDelegate).tabPerson
        super.init()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.tabPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCellId", for: indexPath)
        let person = self.tabPerson[indexPath.row]
        cell.textLabel?.text = person.lastname
        return cell
    }
    

}
