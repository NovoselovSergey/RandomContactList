//
//  DetailViewController.swift
//  RandomContactList
//
//  Created by Sergey Novoselov on 11/08/2019.
//  Copyright © 2019 Sergey Novoselov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var firstName: String!
    var secondName: String!
    var email: String!
    var phone: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = firstName + " " + secondName
        emailLabel.text = email
        phoneLabel.text = phone
    }
}
