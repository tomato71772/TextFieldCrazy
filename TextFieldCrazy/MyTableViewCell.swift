//
//  MyTableViewCell.swift
//  TextFieldCrazy
//
//  Created by Jim Thorton on 2020/07/01.
//  Copyright © 2020 Jim Thorton. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    
    @IBAction func nameEditingDidEnd(_ sender: UITextField) {
        onEditingName!(sender.accessibilityIdentifier!)
    }
    
    @IBAction func ageEditingDidEnd(_ sender: UITextField) {
        onEditingAge!(sender.accessibilityIdentifier!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    var onEditingName: ((String) -> Void)?
    var onEditingAge: ((String) -> Void)?
}
