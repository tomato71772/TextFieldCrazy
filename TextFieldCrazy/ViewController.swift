//
//  ViewController.swift
//  TextFieldCrazy
//
//  Created by Jim Thorton on 2020/07/01.
//  Copyright © 2020 Jim Thorton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating {
    // MARK: - Variables
    var users = [[String : Any]]()
    let searchController = UISearchController(searchResultsController: nil)
    
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user0 = ["name": "Jim", "age": 54, "ID": UUID().uuidString] as [String : Any]
        let user1 = ["name": "Katherine", "age": 44, "ID": UUID().uuidString] as [String : Any]
        let user2 = ["name": "Susan", "age": 28, "ID": UUID().uuidString] as [String : Any]
        let user3 = ["name": "Nancy", "age": 36, "ID": UUID().uuidString] as [String : Any]
        let user4 = ["name": "Georege", "age": 21, "ID": UUID().uuidString] as [String : Any]
        let user5 = ["name": "Arnold", "age": 68, "ID": UUID().uuidString] as [String : Any]
        let user6 = ["name": "Tom", "age": 33, "ID": UUID().uuidString] as [String : Any]
        let user7 = ["name": "Jerry", "age": 25, "ID": UUID().uuidString] as [String : Any]
        let user8 = ["name": "Kate", "age": 40, "ID": UUID().uuidString] as [String : Any]
        let user9 = ["name": "Austin", "age": 72, "ID": UUID().uuidString] as [String : Any]
        users.append(user0)
        users.append(user1)
        users.append(user2)
        users.append(user3)
        users.append(user4)
        users.append(user5)
        users.append(user6)
        users.append(user7)
        users.append(user8)
        users.append(user9)
        
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        //searchController.dimsBackgroundDuringPresentation = false
        tableView.tableHeaderView = searchController.searchBar
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        //tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    // MARK: - IBOutlet
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        let user = users[indexPath.row]
        let name = user["name"] as! String
        let age = user["age"] as! Int
        let id = user["ID"] as! String
        cell.nameField.text = name
        cell.ageField.text = String(age)
        cell.nameField.tag = 0
        cell.ageField.tag = 1
        cell.nameField.accessibilityIdentifier = id
        cell.ageField.accessibilityIdentifier = id
        
        cell.onEditingName = { id in
            print(id)
        }
        cell.onEditingAge = { id in
            print(id)
        }
        
        return cell
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}

