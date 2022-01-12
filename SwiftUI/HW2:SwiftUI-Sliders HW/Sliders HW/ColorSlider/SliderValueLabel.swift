//
//  Text+Slider.swift
//  Sliders HW
//
//  Created by Kalabishka Ivan on 09.06.2021.
//

import SwiftUI

struct SliderValueLabel: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .foregroundColor(.white)
            .frame(width: 35, alignment: .leading)
    }
}

struct Text_Slider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
            SliderValueLabel(value: 20)
        }
        
    }
}
