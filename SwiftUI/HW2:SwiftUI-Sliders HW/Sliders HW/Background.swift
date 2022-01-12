//
//  Background.swift
//  Sliders HW
//
//  Created by Kalabishka Ivan on 07.06.2021.
//

import SwiftUI

struct Background: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        let firstColor = Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
        let gradient = Gradient(colors: [firstColor, .black])
        let linearGradient = LinearGradient(
            gradient: gradient,
            startPoint: .bottom,
            endPoint: .top
        )
        
        Rectangle()
            .fill(linearGradient)
            .ignoresSafeArea()
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background(red: 21, green: 200, blue: 40)
    }
}
