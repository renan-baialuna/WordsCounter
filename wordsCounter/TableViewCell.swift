//
//  TableViewCell.swift
//  wordsCounter
//
//  Created by Renan Baialuna on 10/08/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
