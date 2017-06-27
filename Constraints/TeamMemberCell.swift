//
//  TeamMemberCell.swift
//  Constraints
//
//  Created by Alex Curran on 26/06/2017.
//  Copyright © 2017 amlcurran. All rights reserved.
//

import UIKit
import SnapKit

class TeamMemberCell: UITableViewCell {
    
    let avatarImageView = UIImageView()
    let nameTitleLabel = UILabel()
    let nameLabel = UILabel()
    
    let ageTitleLabel = UILabel()
    let ageLabel = UILabel()
    let heightTitleLabel = UILabel()
    let heightLabel = UILabel()
    let dessertLabelTitle = UILabel()
    let dessertLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        nameTitleLabel.text = "Name"
        ageTitleLabel.text = "Age"
        heightTitleLabel.text = "Height"
        dessertLabelTitle.text = "Favourite desserts"
        
        contentView.addSubview(avatarImageView)
        avatarImageView.backgroundColor = .red
        
        
        avatarImageView.snp.makeConstraints { (maker) in
            maker.top.equalTo(8)
            maker.leading.equalTo(8)
            maker.height.equalTo(64)
            maker.width.equalTo(64)
        }
        
        
        contentView.addSubview(nameTitleLabel)
        nameTitleLabel.backgroundColor = .green
        nameTitleLabel.text = "Name"
        
        nameTitleLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(avatarImageView.snp.top)
            maker.leading.equalTo(avatarImageView.snp.trailing).offset(8)
            maker.trailing.equalToSuperview().offset(-8)
        }
        
        
        contentView.addSubview(nameLabel)
        nameLabel.backgroundColor = .blue
        nameLabel.text = "Oscar"
        
        nameLabel.snp.makeConstraints { (maker) in
            maker.leading.equalTo(nameTitleLabel.snp.leading)
            maker.trailing.equalTo(nameTitleLabel.snp.trailing)
            maker.top.equalTo(nameTitleLabel.snp.bottom).offset(8)
        }
        
        
        let ageWrapperView = UIView()
        
        ageWrapperView.addSubview(ageTitleLabel)
        ageWrapperView.addSubview(ageLabel)
        
        ageTitleLabel.snp.makeConstraints { (maker) in
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.top.equalToSuperview()
        }
        
        ageLabel.snp.makeConstraints { (maker) in
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.top.equalTo(ageTitleLabel.snp.bottom)
            maker.bottom.equalToSuperview()
        }
        
        contentView.addSubview(ageWrapperView)
        
        ageWrapperView.snp.makeConstraints { (maker) in
            maker.leading.equalTo(nameLabel.snp.leading)
            maker.top.equalTo(nameLabel.snp.bottom).offset(8)
        }
        
        let heightWrapperView = UIView()
        
        heightWrapperView.addSubview(heightTitleLabel)
        heightWrapperView.addSubview(heightLabel)
        
        heightTitleLabel.snp.makeConstraints { (maker) in
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.top.equalToSuperview()
        }
        
        heightLabel.snp.makeConstraints { (maker) in
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.top.equalTo(heightTitleLabel.snp.bottom)
            maker.bottom.equalToSuperview()
        }
        
        contentView.addSubview(heightWrapperView)
        
        heightWrapperView.snp.makeConstraints { (maker) in
            maker.width.equalTo(ageWrapperView.snp.width)
            maker.trailing.equalToSuperview()
            maker.leading.equalTo(ageWrapperView.snp.trailing)
            maker.top.equalTo(ageWrapperView.snp.top)
            maker.bottom.equalTo(ageWrapperView.snp.bottom)
        }
        
        contentView.addSubview(dessertLabelTitle)
        
        dessertLabelTitle.snp.makeConstraints { (maker) in
            maker.leading.equalTo(avatarImageView.snp.leading)
            maker.top.equalTo(ageWrapperView.snp.bottom).offset(8)
        }
        
        contentView.addSubview(dessertLabel)
        
        dessertLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(dessertLabelTitle.snp.top)
            maker.leading.equalTo(heightWrapperView.snp.leading)
            maker.bottom.equalToSuperview().offset(-8)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(to teamMember: TeamMember) {
        nameLabel.text = teamMember.name
        ageLabel.text = "\(teamMember.age)"
        heightLabel.text = "\(teamMember.heightCm)cm"
        dessertLabel.text = teamMember.favouriteDessert
    }
    
}
