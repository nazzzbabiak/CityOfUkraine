//
//  LocationPreview.swift
//  SwiftUIAppTutorialWithMVVMAndMapKit
//
//  Created by Nazar Babyak on 10.03.2022.
//

import SwiftUI

struct LocationPreview: View {
    
    @EnvironmentObject private var vm: LocationsViewModel 
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom) {
             
            VStack(alignment: .leading, spacing: 16.0) {
                
                imagePreView
                
                textPreView
            }
            
            VStack {
                learnMore
                    .buttonStyle(.borderedProminent)
                    .cornerRadius(15)
                next
                    .buttonStyle(.bordered)
                    .cornerRadius(15)
            }
        }
        .padding(10)
        .background(
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.ultraThinMaterial)
                .offset(y: 70)
        )
        .cornerRadius(15)
    }
}

struct LocationPreview_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            LocationPreview(location: LocationsDataService.locations.first!)
                .padding(10)
        }
        .environmentObject(LocationsViewModel())
        
    }
}


extension LocationPreview {
    
    private var imagePreView: some View {
        
        ZStack {
            if let imageName = location.imageNames.first  {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 125, height: 125)
                    .cornerRadius(15)
            }
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(15)
    }
    private var textPreView: some View {
        VStack(alignment: .leading) {
            Text(location.name)
                .font(.system(size: 25, weight: .bold, design: .monospaced))
            
            Text(location.cityName)
                .font(.system(size: 20, weight: .semibold, design: .monospaced))
            
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    private var learnMore: some View {
        Button(action: {
            vm.sheetLocation = location
        }, label: {
            Text("Learn more")
                .font(.system(size: 20, weight: .semibold, design: .monospaced))
                .frame(width: 125, height: 50)

        })
    }
    private var next: some View {
        Button(action: {
            vm.nextButtonPress() 
        }, label: {
            Text("Next")
                .font(.system(size: 20, weight: .semibold, design: .monospaced))
                .frame(width: 125, height: 50)

        })
    }
}

