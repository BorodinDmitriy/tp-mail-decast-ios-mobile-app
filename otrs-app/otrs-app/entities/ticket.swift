//
//  ticket.swift
//  otrs-app
//
//  Created by Imber Fox on 27/11/2018.
//  Copyright © 2018 Imber Fox. All rights reserved.
//

import Foundation

class Ticket {
    var title: String?
    var description: String?
    var state: String?
    var data: String?
    var photoPath: String?
    var number: String?
    
    static func defaultTicket() -> Ticket {
        let ticket = Ticket()
        ticket.title = "Title"
        ticket.description = "description"
        ticket.state = "state"
        ticket.data = "data"
        ticket.number = "number"
        return ticket
    }
}
