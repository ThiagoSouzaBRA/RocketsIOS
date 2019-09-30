//
//  RockDataTableViewCell.swift
//  Foguetes
//
//  Created by Aluno Mack on 10/09/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class RockDataTableViewCell: UITableViewCell {

    @IBOutlet weak var NameRocket: UILabel!
    
    @IBOutlet weak var DateRocket: UILabel!
    
    @IBOutlet weak var FlagRocket: UIImageView!
    
    @IBOutlet weak var ImageRocket: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
