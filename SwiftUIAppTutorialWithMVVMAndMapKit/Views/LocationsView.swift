//
//  LocationsView.swift
//  SwiftUIAppTutorialWithMVVMAndMapKit
//
//  Created by Nazar Babyak on 10.03.2022.
//

import MapKit
import SwiftUI


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let accentColor = Color("AccentColor")
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
            VStack(spacing: 0) {
                header
                    .padding()
                
                Spacer()
                
                locationsPreviewStack
                
                
                
            }
        }
        .sheet(item: $vm.sheetLocation , onDismiss: nil) { location in
            LocationInfoView(location: location)
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}


extension LocationsView {
    
    private var header : some View {
        VStack {
            Button(action: vm.toogleLocationList) {
                Text(vm.mapLocations.name + ", " + vm.mapLocations.cityName)
                    .padding(.vertical, 10)
                    .font(.system(size: 25, weight: .semibold ,design: .monospaced))
                    .frame(height: .infinity)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.primary)
                    .animation(.none, value: vm.mapLocations)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.system(size: 20, weight: .semibold ,design: .monospaced))
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                    }
            }
            if vm.showLocationList {
                LocatonsListView()
            }
        }
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 10)
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion ,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnotation()
                    .scaleEffect(vm.mapLocations == location ? 1 : 0.5)
                    .onTapGesture { 
                        withAnimation(.spring(response: 0.9, dampingFraction: 0.2, blendDuration: 0.6)) {
                            vm.mapLocations = location
                        }
                    }
            }
        })
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                
                if vm.mapLocations == location {
                    LocationPreview(location: location)
                }
            }
        }
        .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 10)
        .padding(10)
        .transition(.asymmetric(
            insertion: .move(edge: .leading),
            removal: .move(edge: .trailing )))
    }
}
