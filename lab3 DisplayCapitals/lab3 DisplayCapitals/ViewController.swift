//
//  ViewController.swift
//  lab3 DisplayCapitals
//
//  Created by student on 13/06/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    @IBOutlet var pickerView1 : UIPickerView!
    
    var states: [String] = []
    var capitals: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // passing values to array
        states = ["Maharashtra","Karnataka","Tamil Nadu","Andhra Pradesh","Kerala"]
        capitals = ["Mumbai","Bengaluru","Chennai","Amravathi","Kochi"]
        pickerView1.delegate = self
        pickerView1.dataSource = self
        
    }
    
    // Number of components
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Number of elements in pickerview
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let alert = UIAlertController(title:"City & Capitals Info", message: "\(states[row] as String) capital is \(capitals[row] as String)", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }

}

