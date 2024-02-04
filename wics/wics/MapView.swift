//
//  MapView.swift
//  wics
//
//  Created by Eesha Kandukuri on 2/3/24.
//

import Foundation
import UIKit
import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    typealias UIViewType = UIView
    
    let coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let map = MKMapView()
        map.setRegion(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.7, longitudeDelta: 0.7)), animated: true)
        view.addSubview(map)
        
        map.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            map.widthAnchor.constraint(equalTo: view.widthAnchor),
            map.heightAnchor.constraint(equalTo: view.heightAnchor),
            map.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            map.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let pin0 = MKPointAnnotation()
        pin0.coordinate = CLLocationCoordinate2D(latitude: 30.259740, longitude: -97.631950)
        map.addAnnotation(pin0)
        
        let pin1 = MKPointAnnotation()
        pin1.coordinate = CLLocationCoordinate2D(latitude: 30.337099, longitude: -97.682426)
        map.addAnnotation(pin1)
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2D(latitude: 30.213440, longitude: -97.738136)
        map.addAnnotation(pin2)
        
        let pin3 = MKPointAnnotation()
        pin3.coordinate = CLLocationCoordinate2D(latitude: 28.972639, longitude: -95.979752)
        map.addAnnotation(pin3)
        
        let pin4 = MKPointAnnotation()
        pin4.coordinate = CLLocationCoordinate2D(latitude: 30.269000, longitude: -97.740400)
        map.addAnnotation(pin4)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // do nothing
    }
    
    
    
    
}
