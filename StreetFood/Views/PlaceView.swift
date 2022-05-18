//
//  PlaceView.swift
//  StreetFood
//
//  Created by Gabriel Santiago on 16/05/22.
//

import SwiftUI

struct PlaceView: View {
    var restaurant: LocationModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Image(restaurant.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Text(restaurant.name)
                .bold()
                .font(.title)
                .padding(.leading)
            Text(restaurant.locationReference)
                .padding(.leading)
            Text(restaurant.openingHours)
                .padding(.leading)
            List{
                ForEach(restaurant.menu.sorted(by: >), id: \.key) { key, value in
                    HStack(alignment:.top) {
                        Text(key)
                            .bold()
                        Spacer()
                        Text(String(format: "R$\(value)", ".%3f"))
                        
                    }
                    
                }
            }
        }
        
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlaceView(restaurant: LocationModel.mock().first!)
        }
    }
}
