//
//  ActionViewCell.swift
//  TestSMSandMail
//
//  Created by Eugene Lezov on 20.08.2018.
//  Copyright © 2018 Eugene Lezov. All rights reserved.
//

import UIKit

class ActionViewCell: UITableViewCell {
    
    
    //MARK: - Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    //MARK: - Properties
    
    var type: ActionType?
    
    
    // MARK: - Methods
    
    func configure(model: ActionModel) {
        type = model.type;
        titleLabel.text = model.type.rawValue
    }
}

