//
//  TicketViewCellTableViewCell.swift
//  otrs-app
//
//  Created by Imber Fox on 27/11/2018.
//  Copyright © 2018 Imber Fox. All rights reserved.
//

import UIKit

class TicketViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
