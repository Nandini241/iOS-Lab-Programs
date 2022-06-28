//
//  ViewController.swift
//  lab10 CoreDataApp
//
//  Created by student on 14/06/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {$
    @IBOutlet var nameTextField : UITextField!
    @IBOutlet var addressTextField : UITextField!
    @IBOutlet var phoneTextField : UITextField!
    @IBOutlet var emailTextField : UITextField!
    
    @IBOutlet var statusLabel1 : UILabel!
    @IBOutlet var saveButton : UIButton!
    @IBOutlet var findButton : UIButton!
    
    let appDelegate1 = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButtonClick() {
        let context = appDelegate1.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "PersonDetails", in: context)
        
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        newUser.setValue(nameTextField.text, forKey: "name")
        newUser.setValue(addressTextField.text, forKey: "address")
        newUser.setValue(phoneTextField.text, forKey: "phone")
        newUser.setValue(emailTextField.text, forKey: "email")
        
        do {
            try context.save()
            nameTextField.text = ""
            addressTextField.text = ""
            phoneTextField.text = ""
            emailTextField.text = ""
            
            statusLabel1.text = "Contact Saved"
        } catch {
            print("Failed to save")
            
            statusLabel1.text = "Failed to save Contact"
        }
        
        
        
    }
    @IBAction func findButtonClick() {
        let context = appDelegate1.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PersonDetails")
        
        request.predicate = NSPredicate(format: "name=%@", nameTextField.text!)
        
        // request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject]{
                addressTextField.text = data.value(forKey: "address") as? String
                phoneTextField.text = data.value(forKey: "phone") as? String
                emailTextField.text = data.value(forKey: "email") as? String
                
                statusLabel1.text = "Matches found:\(result.count)"
            }
        } catch {
            print("Failed")
            statusLabel1.text = "Failed to save Contact"
        }
    }


}

