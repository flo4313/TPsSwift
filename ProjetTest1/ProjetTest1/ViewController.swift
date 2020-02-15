//
//  ViewController.swift
//  ProjetTest1
//
//  Created by user164174 on 2/10/20.
//  Copyright © 2020 user164174. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController, PersonSetObserver {
    func dataAdded(at: Int) {
//        self.myTableView.reloadData()
        self.myTableView.insertRows(at: [IndexPath(row: at, section: 0)], with: .fade)
    }
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var dataSource : tabPersonDataSource!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = tabPersonDataSource()
        self.myTableView.dataSource = self.dataSource
        self.dataSource.tabPerson.observer = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "add"{
            print("add a new person page")
            if let nextC = segue.destination as? AddPersonController {
                
                nextC.model = self.dataSource.tabPerson
                
            }
        }
        if segue.identifier == "showDetails" {
            if let nextC = segue.destination as? ViewDetailController {
                let index = self.myTableView.indexPathForSelectedRow
                nextC.person = self.dataSource.tabPerson.data[index!.row]
                
            }
        }
    }

}

