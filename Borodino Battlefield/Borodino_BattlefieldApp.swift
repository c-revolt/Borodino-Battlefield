//
//  Borodino_BattlefieldApp.swift
//  Borodino Battlefield
//
//  Created by Александр Прайд on 18.09.2022.
//

import SwiftUI

@main
struct Borodino_BattlefieldApp: App {
    
    @StateObject private var viewModel = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(viewModel)
        }
    }
}
