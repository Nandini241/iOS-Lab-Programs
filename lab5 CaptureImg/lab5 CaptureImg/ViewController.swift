//
//  ViewController.swift
//  lab5 CaptureImg
//
//  Created by student on 13/06/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    @IBOutlet var imgview1 : UIImageView!
    @IBOutlet var cambut1 : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func cameraButtonClick()
    {
        var cameraImagePickerController: UIImagePickerController!
        
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera))
        {
            cameraImagePickerController = UIImagePickerController()
            cameraImagePickerController.delegate = self
            cameraImagePickerController.sourceType = .camera
            cameraImagePickerController.cameraDevice = .rear
            self.present(cameraImagePickerController, animated: true, completion: nil)
        }
        else
        {
            print("Camera cannot be found!")
            
        }
        
    }
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("\(info)")
        
        let image1 = info [.editedImage] as! UIImage
        imgview1.image = image1
        self.dismiss(animated: true, completion: nil)
    }

}

