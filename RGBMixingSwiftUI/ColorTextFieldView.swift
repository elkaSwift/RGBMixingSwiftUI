//
//  ColorTextField.swift
//  RGBMixingSwiftUI
//
//  Created by Елисей Мищенко on 20.02.2022.
//

import SwiftUI

struct ColorTextFieldView: View {
    @State private var textValue = ""
    @Binding private var value: Double
    var body: some View {
        TextField(textValue: $textValue, value: $value)
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFieldView()
    }
}
