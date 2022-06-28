//
//  ViewController.swift
//  exp2 ImageView
//
//  Created by student on 14/06/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView1: UITableView!
    var tableDataArray: [String] = []
    var tableImagesArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var tableDataArray = ["Mumbai","Bengaluru","Hyderabad"]
        var ImagesArray = ["Nature.jpg","img02.jpg","img01"]
        
        tableView1.delegate = self
        tableView1.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: <#T##IndexPath#>)
    }


}

