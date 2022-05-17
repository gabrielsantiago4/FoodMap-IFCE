//
//  ContentView.swift
//  StreetFood
//
//  Created by Gabriel Santiago on 11/05/22.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            FoodMapTESTE( )
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("FOODMAP")
                }
            SavedPlacesView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("FAVORITOS")
                }
        }
        .font(.headline)
        .accentColor(Color(hue: 0.991, saturation: 0.736, brightness: 0.956))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
