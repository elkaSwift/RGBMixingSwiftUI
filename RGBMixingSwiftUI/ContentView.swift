//
//  ContentView.swift
//  RGBMixingSwiftUI
//
//  Created by Елисей Мищенко on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            ColorView(color: Color(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>))
            
            ColorSlider(color: .red, sliderValue: .constant(255))
            ColorSlider(color: .green, sliderValue: .constant(255))
            ColorSlider(color: .blue, sliderValue: .constant(255))
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
