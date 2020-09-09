//
//  ViewController.swift
//  mapDemo
//
//  Created by admin on 22/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController
{

    @IBOutlet weak var myMap: MKMapView!
    var c = 0
    let locationManager = CLLocationManager()
    
    @IBAction func currentLocation(_ sender: UIButton)
    {
        let userLocation = myMap.userLocation//will give the users coordinate
        let region = MKCoordinateRegion.init(center: userLocation.location!.coordinate, latitudinalMeters: 2000, longitudinalMeters: 2000)
        
        myMap.setRegion(region , animated: true)
    }
    
    @IBAction func mapType(_ sender: UIButton)
    {
        
        c = c + 1
        if (c%3 == 0)
        {
            myMap.mapType = MKMapType.satelliteFlyover
        }
       else if (c%3 == 1)
        {
            myMap.mapType = MKMapType.hybridFlyover
  
        }
        else if (c%3 == 2)
        {
            myMap.mapType = MKMapType.standard
            
        }
        

    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()//this will ask ios for ur loc
        myMap.showsUserLocation = true
        let eiffel = Destination(title: "Eiffel", subtitle: "located in Paris "
            , coordinate: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945))
        myMap.addAnnotation(eiffel)
    }

}
class Destination : NSObject,MKAnnotation
{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
     init(title:String,subtitle:String,coordinate:CLLocationCoordinate2D){
     self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
    
}
