//
//  TeamMemberCell.swift
//  Constraints
//
//  Created by Alex Curran on 26/06/2017.
//  Copyright © 2017 amlcurran. All rights reserved.
//

import UIKit

class TeamMemberCell: UITableViewCell {

    let teamMemberImageView: UIImageView

    let nameDescriptionLabel: UILabel

    let ageDescriptionLabel:  UILabel

    let heightDescriptionLabel: UILabel

    let dessertDescriptionLabel: UILabel

    let nameLabel: UILabel

    let ageLabel:  UILabel

    let heightLabel: UILabel

    let dessertLabel: UILabel

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {

        teamMemberImageView = UIImageView()

        nameDescriptionLabel = UILabel()

        ageDescriptionLabel = UILabel()

        heightDescriptionLabel = UILabel()

        dessertDescriptionLabel = UILabel()

        nameLabel = UILabel()

        ageLabel = UILabel()

        heightLabel = UILabel()
        
        dessertLabel = UILabel()

        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupSubviews()

        setupConstraints()
    }

    private func setupSubviews() {

        contentView.addSubview(teamMemberImageView)

        contentView.addSubview(nameDescriptionLabel)

        contentView.addSubview(ageDescriptionLabel)

        contentView.addSubview(heightDescriptionLabel)

        contentView.addSubview(dessertDescriptionLabel)

        contentView.addSubview(nameLabel)

        contentView.addSubview(ageLabel)

        contentView.addSubview(heightLabel)
        
        contentView.addSubview(dessertLabel)
    }

    private func setupConstraints() {

        teamMemberImageView.constrain(width: 64.0)
        teamMemberImageView.constrain(height: 64.0)

        teamMemberImageView.constrainToSuperview(.top, withOffset: 8)
        teamMemberImageView.constrainToSuperview(.left, withOffset: 8)

        nameDescriptionLabel.constrain(.left, to: teamMemberImageView, .right, withOffset: 8)
        nameDescriptionLabel.constrain(to: teamMemberImageView, .top)

        nameLabel.constrain(to: nameDescriptionLabel, .left)
        nameLabel.constrainToSuperview(.right, withOffset: 8)

        nameLabel.constrain(.top, to: nameDescriptionLabel, .bottom, withOffset: 8)

        ageDescriptionLabel.constrain(.top, to: nameLabel, .bottom, withOffset: 16)
        ageDescriptionLabel.constrain(to: nameLabel, .left)



    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(to teamMember: TeamMember) {

        teamMemberImageView.image = #imageLiteral(resourceName: "teamMember")

        nameDescriptionLabel.text = "Name"

        nameLabel.text = teamMember.name

        ageDescriptionLabel.text = "Age"
    }
    
}
