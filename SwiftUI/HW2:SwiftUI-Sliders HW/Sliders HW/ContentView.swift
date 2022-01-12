//
//  ContentView.swift
//  Sliders HW
//
//  Created by Kalabishka Ivan on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Background(
                red: redSliderValue,
                green: greenSliderValue,
                blue: blueSliderValue
            )
            
            VStack {
                ColorView(
                    red: redSliderValue,
                    green: greenSliderValue,
                    blue: blueSliderValue)
                
                VStack {
                    ColorSlider(sliderValue: $redSliderValue, color: .red)
                    ColorSlider(sliderValue: $greenSliderValue, color: .green)
                    ColorSlider(sliderValue: $blueSliderValue, color: .blue)
                }
                Spacer()
            }
            .padding()
        } 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







