//
//  ColorView.swift
//  Sliders HW
//
//  Created by Kalabishka Ivan on 09.06.2021.
//

import SwiftUI

struct ColorView: View {
    
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 3)
        )
        .frame(height: 120)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 20, green: 20, blue: 20)
    }
}
