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
                .aspectRatio(contentMode: .fit)
            Text(restaurant.name)
                .bold()
                .font(.title)
                .padding(.leading)
            Text(restaurant.locationReference)
                .padding(.leading)
            Text(restaurant.openingHours)
                .padding(.leading)
            Spacer()

        } 
        
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView(restaurant: LocationModel.mock().first!)
    }
}
