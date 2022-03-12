//
//  LocatonsListView.swift
//  SwiftUIAppTutorialWithMVVMAndMapKit
//
//  Created by Nazar Babyak on 10.03.2022.
//

import SwiftUI

struct LocatonsListView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Button(action: {
                    vm.showNextLocation(location: location)
                }, label: {
                    listRawView(location: location)
                })
                    .padding(.vertical, 5)
                    .listRowBackground(Color.clear)
            }
        }
        .listStyle(.plain)
    }
}

struct LocatonsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocatonsListView()
            .environmentObject(LocationsViewModel())
    }
}


extension LocatonsListView {
    
    private func listRawView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 65, height: 65)
                    .cornerRadius(5)
                
                VStack(alignment: .leading) {
                    Text(location.cityName)
                        .font(.system(size: 25, weight: .bold, design: .monospaced))
                        .padding(.horizontal, 10)
                    
                    Text(location.name)
                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                    
                        .padding(.horizontal, 10)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}
