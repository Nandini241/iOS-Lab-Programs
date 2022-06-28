//
//  ViewController.swift
//  labexternal staticLocationapp
//
//  Created by student on 22/06/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet var mapView1 : MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let staticLocation1 = CLLocationCoordinate2D(
            latitude: 12.6423, longitude: 77.4405
        )
        let span1 = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        let region1 = MKCoordinateRegion(center: staticLocation1, span: span1)
        mapView1.setRegion(region1, animated: true)
        mapView1.mapType = .hybrid
        
        // declaring and displaying annotations
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = staticLocation1
        annotation1.title = "Jain University, Kanakpura"
        mapView1.addAnnotation(annotation1)
    }
    


}

