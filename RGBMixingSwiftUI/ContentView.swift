//
//  ContentView.swift
//  RGBMixingSwiftUI
//
//  Created by Елисей Мищенко on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    @FocusState private var focusedField: Bool
    
    var body: some View {
        ZStack {
            
        
            VStack(spacing: 40){
               ColorView(red: red, green: green, blue: blue)
                VStack {
                    ColorSliderView(sliderValue: $red, color: .red)
                    ColorSliderView(sliderValue: $green, color: .green)
                    ColorSliderView(sliderValue: $blue, color: .blue)
                }
                .frame(height: 150)
                .focused($focusedField)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            focusedField = false
                        }
                    }
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
