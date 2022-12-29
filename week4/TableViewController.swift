//
//  TableViewController.swift
//  week4
//
//  Created by Ali serkan Boyracı  on 29.12.2022.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var users: [User] = [
        .init(name: "Mucahit", id: "01"),
        .init(name: "Serkan", id: "02" ),
        .init(name: "Esra", id: "03")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
        tableView.separatorStyle = .none // to delete seperator between cells
        
        
        
        

        
    }


}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { // you can select row.
        let user = users[indexPath.row]
        print("\(indexPath.row) - \(user.name)") // print its index 0,1,2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
}
extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        
        let user = users[indexPath.row]
        cell.textLabel?.text = user.id + " - " + user.name
        
        
        
        /*if indexPath.row % 2 == 1 {
            cell.textLabel!.text = "serkan"
        } else {
            cell.textLabel!.text = "boyraci"
        }*/
        
        //var content = cell.defaultContentConfiguration()
        //content.text = placeNameArray[indexPath.row]
        //cell.contentConfiguration  = content
        return cell
    }
}

struct User {
    let name : String
    let id : String
}
