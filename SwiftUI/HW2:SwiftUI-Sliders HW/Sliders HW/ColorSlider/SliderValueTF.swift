//
//  SliderValueTF.swift
//  Sliders HW
//
//  Created by Kalabishka Ivan on 09.06.2021.
//

import SwiftUI

struct SliderValueTF: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue, onCommit: checkValue)
            // модификатор срабатывает в тот момент когда пользователь заканчивает редактирование текстового поля
            .frame(width: 45, alignment: .trailing)
            .disableAutocorrection(true)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .colorMultiply(Color(UIColor(white: 1, alpha: 0.6)))
            
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Wrong Format"),
                    message: Text("Please enter value from 0 to 255")
                )
            }
    }
}

extension SliderValueTF {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value){
            // извлекает значение из текстового поля в которое пользователь внес данные, если значение смогли извлечь то проверяем входит ли это число в диапазон от 0 до 255, если да, то передаем значение в свойство value
            self.value = Double(value)
            return
        }
        // если не получилось отображаем контроллер и задаем новые значения
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}

struct SliderValueTF_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueTF(textValue: .constant("22"), value: .constant(10.0))
    }
}


