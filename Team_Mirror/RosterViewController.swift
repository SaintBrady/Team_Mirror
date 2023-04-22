//
//  RosterViewController.swift
//  SQLiteTest
//
//  Created by Brayden M Dyke on 4/21/23.
//

import UIKit

class RosterViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var db = DBManager()
    var players = Array<Player>()
      
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self

        db.insert(number: 1, name: "John", position: "Infielder", year: "Freshman", image: "https://img.png")
        db.insert(number: 2, name: "Steve", position: "Infielder", year: "Freshman", image: "https://img.png")
        db.insert(number: 3, name: "Nathan", position: "Infielder", year: "Freshman", image: "https://img.png")
        db.insert(number: 4, name: "Will", position: "Infielder", year: "Freshman", image: "https://img.png")
        db.insert(number: 5, name: "Daemon", position: "Infielder", year: "Freshman", image: "https://img.png")
        players = db.read()
    }
}

extension RosterViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
  
  
extension RosterViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") ?? UITableViewCell()
        cell.textLabel?.numberOfLines = 0
        cell.imageView?.image
        cell.textLabel?.text = "Number: " + players[indexPath.row].number.description + "\nName: " + players[indexPath.row].name/* + "\nPosition: " + players[indexPath.row].position + "\nYear: " + players[indexPath.row].year + "\nImage: " + players[indexPath.row].image*/
        return cell
    }
}
