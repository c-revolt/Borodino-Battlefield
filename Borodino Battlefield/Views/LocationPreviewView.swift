//
//  LocationPreviewView.swift
//  Borodino Battlefield
//
//  Created by Александр Прайд on 19.09.2022.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var viewModel: LocationsViewModel
    let location: Location
    
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                
                imageSection
                titleSetion

            }
            VStack(spacing: 15) {
                
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .cornerRadius(10)
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.blue.ignoresSafeArea()
            
            LocationPreviewView(location: LocationDataService.locations.first!)
                .padding()
        }
        .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView {
    
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first  {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSetion: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            Text(location.name)
                .font(.headline)
                .lineLimit(2)
                .padding(.horizontal, 4.0)
            
            Text(location.locationName)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 4.0)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        
        Button {
            viewModel.sheetLocation = location
        } label: {
            Text("Читать")
                .font(.headline)
                .foregroundColor(Color.white)
                .frame(width: 125, height: 35)
        }
        .background(Color.black)
        .buttonStyle(.bordered)
        .cornerRadius(10)
    
    
    }
    
    private var nextButton: some View {
        
        Button {
            viewModel.nextButtonPressed()
        } label: {
            Text("Дальше")
                .font(.headline)
                .foregroundColor(Color.white)
                .frame(width: 125, height: 35)
        }
        
        .buttonStyle(.bordered)
    }
}
