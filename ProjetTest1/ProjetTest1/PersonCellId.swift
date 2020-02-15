//
//  PersonCellId.swift
//  ProjetTest1
//
//  Created by user165108 on 11/02/2020.
//  Copyright © 2020 user164174. All rights reserved.
//

import UIKit

class PersonCellId: UITableViewCell {
    //MARK: Properties
        
    @IBOutlet weak var nom: UILabel!
    
    @IBOutlet weak var dep: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
