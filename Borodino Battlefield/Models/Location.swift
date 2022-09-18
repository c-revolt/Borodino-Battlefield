//
//  Location.swift
//  Borodino Battlefield
//
//  Created by Александр Прайд on 18.09.2022.
//

import SwiftUI
import CoreLocation

struct Location: Identifiable {
    
    let name: String
    let category: String
    let imageNames: [String]
    let locationName: String
    let description: String
    let link: String
    let coordinates: CLLocationCoordinate2D
    
    // Identifiable
    var id: String {
        name + locationName
    }
    
}
