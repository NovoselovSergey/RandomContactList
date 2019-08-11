//
//  FirstTaskTableViewController.swift
//  RandomContactList
//
//  Created by Sergey Novoselov on 11/08/2019.
//  Copyright © 2019 Sergey Novoselov. All rights reserved.
//

import UIKit

class FirstTaskTableViewController: UITableViewController {
    
    let contactList = Person.getContactList()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = contactList[indexPath.row].firstName + " " + contactList[indexPath.row].secondName
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.firstName = contactList[indexPath.row].firstName
            detailVC.secondName = contactList[indexPath.row].secondName
            detailVC.email = contactList[indexPath.row].email
            detailVC.phone = contactList[indexPath.row].phone
        }
    }
}
