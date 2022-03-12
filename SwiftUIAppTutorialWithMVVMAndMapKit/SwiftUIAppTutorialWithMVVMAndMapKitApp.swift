//
//  SwiftUIAppTutorialWithMVVMAndMapKitApp.swift
//  SwiftUIAppTutorialWithMVVMAndMapKit
//
//  Created by Nazar Babyak on 10.03.2022.
//

import SwiftUI

@main
struct SwiftUIAppTutorialWithMVVMAndMapKitApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
