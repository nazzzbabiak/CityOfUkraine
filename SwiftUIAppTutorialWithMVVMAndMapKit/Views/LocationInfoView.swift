//
//  LocationInfoView.swift
//  SwiftUIAppTutorialWithMVVMAndMapKit
//
//  Created by Nazar Babyak on 11.03.2022.
//

import SwiftUI
import MapKit

struct LocationInfoView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel

    let location: Location
    
    var body: some View {
        
        ScrollView {
            VStack {
                infoImage
                
                VStack(alignment: .leading, spacing: 25) {
                    
                    infoText
                    
                    Divider()
                    
                    infoDescriptionText
                    
                    Divider()
                    
                    mapLayer
                }
                .frame(maxWidth: .infinity , alignment: .leading)
                //.background(Color.red)
                .padding(.horizontal, 10)
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
    }
}

struct LocationInfoView_Previews: PreviewProvider {
    static var previews: some View {
        LocationInfoView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}

extension LocationInfoView {
    
    private var infoImage: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
                
            }
        }
        .frame(height: 500)
        .tabViewStyle(.page)
    }
    private var infoText: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(location.name)
                .font(.system(size: 35, weight: .bold, design: .monospaced))
            Text(location.cityName)
                .font(.system(size: 25, weight: .semibold, design: .monospaced))
                .foregroundColor(.secondary)
            
        }
    }
    
    private var infoDescriptionText: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(location.description)
                .font(.system(size: 20, weight: .regular, design: .monospaced))
                .foregroundColor(Color.black.opacity(0.7))
            
            if let url = URL(string: location.link) {
                Link("Read more on Wiki...", destination: url)
                    .font(.system(size: 20, weight: .light, design: .monospaced))
                    .tint(.blue)

            }
        }
    }
    private var mapLayer: some View {
        
        Map(coordinateRegion: .constant(
            MKCoordinateRegion(
                center: location.coordinates,
                span: vm.mapSpan)),
            annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnotation()
            }
        }
            .allowsHitTesting(false)
            .cornerRadius(UIScreen.main.bounds.height / 35)
            .aspectRatio(1, contentMode: .fit)
    }
    
    private var backButton: some View {
        
        Button {
            vm.sheetLocation = nil 
        } label: {
            Image(systemName: "xmark")
                .resizable()
                .padding()
                .frame(width: 45, height: 45)
                .foregroundColor(.primary)
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(radius: 2)
                .padding()
        }

    }
}
