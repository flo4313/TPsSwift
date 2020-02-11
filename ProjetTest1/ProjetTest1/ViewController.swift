//
//  ViewController.swift
//  ProjetTest1
//
//  Created by user164174 on 2/10/20.
//  Copyright © 2020 user164174. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var dataSource : tabPersonDataSource!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = tabPersonDataSource()
        self.myTableView.dataSource = self.dataSource
    }
    

    
    
}

