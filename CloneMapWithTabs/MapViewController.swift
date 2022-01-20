//
//  Page3ViewController.swift
//  MapWithTabs
//
//  Created by Jon Fuit on 1/19/22.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBAction func changeMapType(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            mapView.mapType = .standard
        } else {
            mapView.mapType = .satellite
        }
        
    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let appleHQ = CLLocation(latitude: 37.334722, longitude: -122.008889)
        let regionRadius: CLLocationDistance = 1000.0
        let region = MKCoordinateRegion(center: appleHQ.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(region, animated:  true)
        mapView.delegate = self
    }
    

}


extension MapViewController: MKMapViewDelegate {
    
   func mapViewWillStartRenderingMap(_ mapView: MKMapView) {
        print("rendering ...")
    }
}
