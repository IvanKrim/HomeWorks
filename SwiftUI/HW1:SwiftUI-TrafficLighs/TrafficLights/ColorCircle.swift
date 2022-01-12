//
//  ColorCircle.swift
//  TrafficLights
//
//  Created by Kalabishka Ivan on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
        
    var body: some View {
        
        Circle()
            .foregroundColor(color.opacity(opacity))
            .frame(width: 150 , height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .padding(.all, 5)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .accentColor, opacity: 1)
    }
}
