//
//  ColorSlider.swift
//  RGBMixingSwiftUI
//
//  Created by Елисей Мищенко on 20.02.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            ColorTextView(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { newValue in
                    textValue = "\(lround(newValue))"
                }
            ColorTextFieldView(textValue: $textValue, value: $sliderValue)
        }
        .padding()
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(sliderValue: .constant(0), color: .red)
    }
}
