//
//  ColorSlider.swift
//  Sliders HW
//
//  Created by Kalabishka Ivan on 09.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack{
            SliderValueLabel(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
                .onChange(of: sliderValue) { isOnFocus in
                    textValue = "\(lround(isOnFocus))"
                } // модификатор  который передает данные из sliderValue в textValue в реальном времени как только значения меняются
            // берем значения из слайдера, далее раскрываем блок замыкания  isOnFocus - это значение которое генерирует слайдер (его актуальный показатель с типом Double) далее передаем в textValue
            
            SliderValueTF(textValue: $textValue, value: $sliderValue)
        }
        // модификатор вызывается перед тем как вью будет отображен. необходим для передачи значений в текстовые поля
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
        // модификатор который позволяет скрывать клавиатуру тапая по экрану
//        .onTapGesture {
//            UIApplication.shared.endEditing()
//            sliderValue = Double(textValue) ?? 0
//        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(sliderValue: .constant(20), color: .red)
    }
}
