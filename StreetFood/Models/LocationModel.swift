//
//  LocationModel.swift
//  StreetFood
//
//  Created by Gabriel Santiago on 15/05/22.
//

import Foundation
import MapKit

struct LocationModel: Identifiable {
    let name: String
    let mainCourse: String
    let openingHours: String
    let locationReference: String
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let imageName: String
    var menu: [String : Double] = [:]
    
    
    
    
    static func mock() -> [LocationModel] {
        [
            LocationModel(name: "Açaí Lanches", mainCourse: "Pó de Guaraná", openingHours: "6:30h - 18:00h ", locationReference: "Praça da Gentilandia", coordinate: CLLocationCoordinate2D(latitude: -3.742804, longitude: -38.537357), imageName: "IMG_0148 3", menu : [
                
                "Salgado" : 3.50,
                "Achocolatado" : 2.50,
                "Refrigerante" : 3.50,
                "Pó de Guraná" : 3.50
            ]),
            LocationModel(name: "Carrinho do Tio", mainCourse: "Sanduíche de Páo Carioca", openingHours: "6:00h - 18:00h", locationReference: "Entrada da 13 de maio" ,coordinate: CLLocationCoordinate2D(latitude: -3.744207, longitude: -38.535440), imageName: ""),
        ]
    }
}
