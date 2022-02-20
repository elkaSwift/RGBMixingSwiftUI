//
//  ColorSlider.swift
//  RGBMixingSwiftUI
//
//  Created by Елисей Мищенко on 20.02.2022.
//

import SwiftUI

struct ColorSliderView: View {
    
    let color: Color
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 50)
                Spacer()
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .frame(width: 200)
                .onChange(of: sliderValue) { newValue in
                    textValue = "\(lround(newValue))"
                }
            Spacer()
//            TextField(textValue: $textValue, value: $sliderValue)                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
        .padding()
        
    }
    
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(color: .red, sliderValue: .constant(100))
    }
}
