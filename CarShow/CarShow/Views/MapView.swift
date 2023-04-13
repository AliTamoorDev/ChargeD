//
//  MapView.swift
//  CarShow
//
//  Created by Ali Tamoor on 25/02/2023.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct MapView: View {
    @StateObject private var mapVM = MapViewModel()
    @Binding var locationCordinates: String
    @State var temp: String = ""
    @State private var tabBar: UITabBar?
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                Map(coordinateRegion: $mapVM.region,showsUserLocation: true)
                    .ignoresSafeArea()
                    .tint(.pink)
                
                VStack {
                    LocationButton(.currentLocation) {
                        mapVM.getOneTimeUserLocation()
                        locationCordinates = mapVM.locationCordinates
                        print("Yayy!")
                    }
                    .foregroundColor(ColorConstants.bgColorWhite)
                    .symbolVariant(.fill)
                    .cornerRadius(8)
                    .tint(.pink)
                    //                .frame(width: 220,height: 60)
                    .padding(.bottom,15)
                    //                    TextField("jkjjknnnm", text: $mapVM.locationCordinates)
                }
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(locationCordinates: .constant(""), temp: "")
    }
}

final class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.46491476811184, longitude: 54.381455790896034), span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30))
    @Published var locationCordinates: String = ""
    let locationManager = CLLocationManager()
    
//    override init() {
//
//        super.init()
//        locationManager.delegate = self
//    }
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    func getOneTimeUserLocation(){
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let currentLocation =  locations.first else {
            return
        }
        
        DispatchQueue.main.async {
            self.region = MKCoordinateRegion(center: currentLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            
            self.locationCordinates = String("\(currentLocation.coordinate.latitude), \(currentLocation.coordinate.longitude)")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}
