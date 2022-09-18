//
//  LocationsViewModel.swift
//  Borodino Battlefield
//
//  Created by Александр Прайд on 18.09.2022.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationDataService.locations
        self.locations = locations
    }
}
