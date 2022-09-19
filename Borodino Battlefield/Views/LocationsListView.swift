//
//  LocationsListView.swift
//  Borodino Battlefield
//
//  Created by Александр Прайд on 19.09.2022.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var viewModel: LocationsViewModel
    
    var body: some View {
         
        List {
            ForEach(viewModel.locations) { location in
                listRowView(location: location)
                    .padding(.vertical, 4)
                    .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsListView {
    
    private func listRowView(location: Location ) -> some View {
        
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(31)
            }
            
            VStack(alignment: .leading) {
                Text(location.name)
            }
            .frame(width: .infinity, alignment: .leading)
        }
    }
}
