//
//  ContentView.swift
//  wics
//
//  Created by Eesha Kandukuri on 2/3/24.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                GeometryReader { proxy in
                    MapView(coordinate: CLLocationCoordinate2D(latitude: 30.2672, longitude: -97.7431))
                        .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
