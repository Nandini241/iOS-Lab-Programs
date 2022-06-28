//
//  ViewController.swift
//  exp8 staticLocation
//
//  Created by student on 14/06/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet var  mapView1 : MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let staticLocation = CLLocationCoordinate2D(
        latitude: 12.6423,
        longitude: 77.4405
        )
        
        let span1 = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        
        let region1 = MKCoordinateRegion(center: staticLocation, span: span1)
        mapView1.setRegion(region1, animated: true)
        mapView1.mapType = .hybrid
        
        
        
        // displaying Annotations
         let annotation = MKPointAnnotation()
        annotation.coordinate = staticLocation
        annotation.title = "JAIN UNIVERSITY, KANAKPURA"
        mapView1.addAnnotation(annotation)
    }


}

