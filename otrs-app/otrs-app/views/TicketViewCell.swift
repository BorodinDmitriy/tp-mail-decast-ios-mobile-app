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
    
    // todo reanme
    @IBOutlet weak var decriptionLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    // rename
    @IBOutlet weak var ticketNumberLabel: UILabel!
    
    @IBOutlet weak var ticketPhoto: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillCell(filledTicket ticket: Ticket) {
        titleLabel.text = ticket.title
        decriptionLabel.text = ticket.description
        stateLabel.text = ticket.state
        dataLabel.text = ticket.data
        ticketNumberLabel.text = ticket.number
    }

}
