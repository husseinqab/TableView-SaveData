//
//  TableViewCell.swift
//  Table View Exercise
//
//  Created by Hussein Qabalan on 4/7/20.
//  Copyright © 2020 Hussein Qabalan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell{


    @IBOutlet weak var helloLabel: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    @IBAction func textChanged(_ sender: UITextField) {
           delegate.saveData(text: textField.text!, at: index)
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var delegate : MyTableViewCellDelegate!
    var index : IndexPath!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

protocol MyTableViewCellDelegate {
    func saveData(text : String, at index : IndexPath)
}
