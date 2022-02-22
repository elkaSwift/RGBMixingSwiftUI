//
//  ColorTextField.swift
//  RGBMixingSwiftUI
//
//  Created by Елисей Мищенко on 20.02.2022.
//

import SwiftUI

struct ColorTextFieldView: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            withAnimation {
                
            }
        }
        .frame(width: 50, alignment: .trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
            Text("Enter a value from 0 to 255")
        }
    }
}

extension ColorTextFieldView {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        textValue = "0"
        value = 0
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFieldView(textValue: .constant("0"), value: .constant(0.0))
    }
}
