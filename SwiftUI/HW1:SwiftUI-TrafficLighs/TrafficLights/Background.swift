//
//  Background.swift
//  TrafficLights
//
//  Created by Kalabishka Ivan on 02.06.2021.
//

import SwiftUI

struct Background: View {
    var body: some View {
        let gradient = Gradient(colors: [.white, .blue, .black])
        let linearGradient = LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top)
        
        Rectangle()
            .fill(linearGradient)
            .ignoresSafeArea()
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
