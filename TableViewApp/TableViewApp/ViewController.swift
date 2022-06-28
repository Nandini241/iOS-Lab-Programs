//
//  ViewController.swift
//  TableViewApp
//
//  Created by student on 13/06/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var table1: UITableView!
    
    var mactSubjects: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mactSubjects = ["iOS","Software Engineering","Data Visualization","AWS","Linux Administration","Cloud Computing"]
        table1.delegate = self
        table1.dataSource = self
    }
    // Number of Sections in TableView (static)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // Number of Rows in TableView (dynamically created)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mactSubjects.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: indexPath)
        
        // displaying the data
        cell.textLabel?.text = mactSubjects[indexPath.row]
        cell.backgroundColor = .purple
        cell.accessoryType = .detailDisclosureButton
        return cell
    }


}

