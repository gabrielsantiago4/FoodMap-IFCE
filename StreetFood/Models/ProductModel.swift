//
//  MenuModel.swift
//  StreetFood
//
//  Created by Gabriel Santiago on 18/05/22.
//

import Foundation

struct ProductModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let price: String
    
}
