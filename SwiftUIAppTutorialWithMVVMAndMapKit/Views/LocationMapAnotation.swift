//
//  LocationMapAnotation.swift
//  SwiftUIAppTutorialWithMVVMAndMapKit
//
//  Created by Nazar Babyak on 11.03.2022.
//

import SwiftUI

struct LocationMapAnotation: View {
    
    let accentColor = Color("AccentColor")
    
    var body: some View {
        VStack(spacing: 0.0) {
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .cornerRadius(20)
            Image(systemName: "triangle.tophalf.filled")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
                .foregroundColor(accentColor)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
                .padding(.bottom, 35)
        }
    }
}

struct LocationMapAnotation_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            LocationMapAnotation()
        }
    }
}
 
