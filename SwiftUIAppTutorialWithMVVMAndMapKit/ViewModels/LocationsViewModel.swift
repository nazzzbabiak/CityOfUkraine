//
//  LocationsViewModel.swift
//  SwiftUIAppTutorialWithMVVMAndMapKit
//
//  Created by Nazar Babyak on 10.03.2022.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    @Published var mapLocations: Location {
        didSet {
            updateMapRegion(location: mapLocations)
        }
    }
    
    
    @Published var showLocationList: Bool = false
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    @Published var sheetLocation:  Location? = nil
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocations = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.spring()) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
    func toogleLocationList() {
        withAnimation(.spring(response: 0.2, dampingFraction: 0.9, blendDuration: 0.6)) {
            showLocationList = !showLocationList
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.spring()) {
            mapLocations = location
            showLocationList = false
            
        }
    }
    
    func nextButtonPress() {
        
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocations}) else {
            return
        }
        
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            
            guard let firstLocation = locations.first else {
                return
            }
            showNextLocation(location: firstLocation)
            return
        }
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}

