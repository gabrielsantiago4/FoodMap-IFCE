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
    var menu: [ProductModel] = []
    
    
    
    
    static func mock() -> [LocationModel] {
        [
            LocationModel(name: "Açaí Lanches", mainCourse: "Pó de Guaraná", openingHours: "6:30h - 18:00h ", locationReference: "Praça da Gentilandia", coordinate: CLLocationCoordinate2D(latitude: -3.742804, longitude: -38.537357), imageName: "IMG_0148 3", menu : [
                ProductModel(name: "Salgado", price: "3.50"),
                ProductModel(name: "Achocolatado ", price: "2.50"),
                ProductModel(name: "Refrigerante", price: "3.50"),
                ProductModel(name: "Vitamina", price: "8.00"),
                ProductModel(name: "Pó de Guaraná", price: "9.00" ),
                ProductModel(name: "Suco", price: "5.00 - 6.50" ),
                ProductModel(name: "Açaí ", price: "10.00"),
                ProductModel(name: "Açaí Completo", price: "14.00"),
                ProductModel(name: "Sanduiche", price: "2.00 - 10.00"),
                ProductModel(name: "Tapioca", price: "2.00 - 10.00 ")
            ]),
            
            LocationModel(name: "Tapiocaria Lanches", mainCourse: "Sanduíche", openingHours: "6:00 - 19:00", locationReference: "Entrada da 13 de maio ", coordinate: CLLocationCoordinate2D(latitude: -3.743907, longitude: -38.535802), imageName: "IMG_0150", menu: [
                ProductModel(name: "Salgado", price: "3.00"),
                ProductModel(name: "Água ", price: "2.00"),
                ProductModel(name: "Café", price: "1.00 - 2.00 "),
                ProductModel(name: "Café c/ Leite", price: "1.50 - 2.50"),
                ProductModel(name: "Refrigerante", price: "5.00"),
                ProductModel(name: "Sanduíche Misto", price: "3.00"),
                ProductModel(name: "Sanduíche c/ Suco", price: "5.00")
                
            ]),
            
            LocationModel(name: "Carrinho do Tio", mainCourse: "Sanduíche de Páo Carioca", openingHours: "6:00h - 18:00h", locationReference: "Entrada da 13 de maio" ,coordinate: CLLocationCoordinate2D(latitude: -3.744207, longitude: -38.535440), imageName: ""),
        ]
    }
}
