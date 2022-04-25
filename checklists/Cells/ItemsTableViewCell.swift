//
//  ItemsTableViewCell.swift
//  checklists
//
//  Created by Парвин Давлатзода on 22/04/22.
//

import UIKit

class ItemsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkMarkerIcon: UIImageView!
    @IBOutlet weak var itemTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
