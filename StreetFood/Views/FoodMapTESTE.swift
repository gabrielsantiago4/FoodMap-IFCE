//
//  FoodMapTESTE.swift
//  StreetFood
//
//  Created by Gabriel Santiago on 15/05/22.
//

import SwiftUI
import MapKit

struct FoodMapTESTE: View {
    @State var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -3.744442, longitude: -38.536031), span: MKCoordinateSpan(latitudeDelta: 0.009, longitudeDelta: 0.009))
    
    let locations = LocationModel.mock()
    
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations)    { location in MapAnnotation(coordinate: location.coordinate){
                NavigationLink{
                   PlaceView(restaurant: location)
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.774, brightness: 1.0))
                }
            }
            }
            .navigationTitle("Foodmap")
        }
    }
}

struct FoodMapTESTE_Previews: PreviewProvider {
    static var previews: some View {
        FoodMapTESTE()
    }
}


