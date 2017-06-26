//
//  ViewController.swift
//  Constraints
//
//  Created by Alex Curran on 26/06/2017.
//  Copyright © 2017 amlcurran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let tableView = UITableView()
    let teamMembers = [TeamMember(name: "Alex", age: 26, heightCm: 167, hairColor: .black, favouriteDessert: "Trifle")]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor).isActive = true
        tableView.dataSource = self
        tableView.register(TeamMemberCell.self, forCellReuseIdentifier: "team")
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamMembers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let memberCell = tableView.dequeueReusableCell(withIdentifier: "team", for: indexPath) as? TeamMemberCell else {
            preconditionFailure("What have you done? 🤔")
        }
        memberCell.bind(to: teamMembers[indexPath.row])
        return memberCell
    }

}

