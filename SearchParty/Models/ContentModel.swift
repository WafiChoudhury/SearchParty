//
//  ContentModel.swift
//  SearchParty
//
//  Created by Wafi Choudhury on 1/8/22.
//

import Foundation
import CoreLocation


class ContentModel: NSObject, CLLocationManagerDelegate, ObservableObject {
    
    @Published var parties = [Party]()
    var locationManager = CLLocationManager()
    @Published var authorizationState = CLAuthorizationStatus.notDetermined

    override init(){
        
        super.init()
        
        locationManager.delegate = self
        //get permission from user and then geolocate them
        locationManager.requestWhenInUseAuthorization()

        
        
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        authorizationState = locationManager.authorizationStatus
        
        if(authorizationState == .authorizedAlways || authorizationState == .authorizedWhenInUse){
            
            locationManager.startUpdatingLocation()
            
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        var userLocation = locations.first
        
        if(userLocation != nil){
            
            locationManager.stopUpdatingLocation()
        }
        
        
    }
}


