//
//  TeamMemberCell.swift
//  Constraints
//
//  Created by Alex Curran on 26/06/2017.
//  Copyright © 2017 amlcurran. All rights reserved.
//

import UIKit

class TeamMemberCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(to teamMember: TeamMember) {
        textLabel?.text = teamMember.name
    }
    
}
