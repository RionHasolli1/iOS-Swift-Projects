//
//  MapUI.swift
//  FitnessUI
//
//  Created by Rion Hasolli on 3.10.21.
//


import MapKit
import SwiftUI

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct MapUI: View {
   
    init() {
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 42.6467542, longitude: 21.170191)
        annotation.title = "Big Sur"
        
        MKMapView.appearance().addAnnotation(annotation)
    }
    
    let places = [
        Place(name: "Fivestar Fitness Rruga B", latitude: 42.6467542, longitude: 21.170191),
        Place(name: "Fivestar Dragodan", latitude: 42.6577542, longitude: 21.147190),
        Place(name: "Gym Breg Diellit", latitude: 42.6507542, longitude: 21.168190),
        Place(name: "Fivestar Te Grandi", latitude: 42.6387641, longitude: 21.160190),
        Place(name: "Gym Breg Diellit", latitude: 42.6647542, longitude: 21.168190),
        Place(name: "Gym Breg Diellit", latitude: 42.6627542, longitude: 21.158190)
      
       
      ]
    
    
 
    
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.667542, longitude: 21.136191), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    
  
    
  
    @State private var trackingMode = MapUserTrackingMode.follow
    
    @State private var locations: [Location] = Location.getLocation()
   
    var body: some View {
        
      
        Map(coordinateRegion: $region, annotationItems: places) { place in
            
            MapMarker(coordinate: place.coordinate,tint: .blue)
                
            
           
           
            
                    /
                }
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
     
       
        .ignoresSafeArea()
       
            
            
             
        }
    
    
   
            
        }
        
      
    





struct MapView: View {
   @Environment(\.presentationMode) var presentationMode
  @Binding var region: MKCoordinateRegion

var body: some View {
    Map(coordinateRegion: $region)
    Text("LatitudeDelta: \(region.span.latitudeDelta)")
    Text("LongitudeDelta: \(region.span.longitudeDelta)")
    Button(action: {
        presentationMode.wrappedValue.dismiss()
    } ) {
        Text("Nuk po Bon")
    }
  }

}

struct Location {
    let id = UUID()
    let title: String
    let coordinate: CLLocationCoordinate2D
}

extension Location: Identifiable { }

extension Location {
    static func getLocation() -> [Location] {
        return [
            Location(title: "KLCC Park", coordinate: CLLocationCoordinate2D(latitude: 3.155699, longitude: 101.713934)),
            Location(title: "Twin Tower", coordinate: CLLocationCoordinate2D(latitude: 3.157804, longitude: 101.711869))
        ]
    }
}


   
struct MapUI_Previews: PreviewProvider {
    static var previews: some View {
        MapUI()
    }
}

