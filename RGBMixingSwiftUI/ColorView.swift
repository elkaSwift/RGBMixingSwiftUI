//
//  ImageView.swift
//  RGBMixingSwiftUI
//
//  Created by Елисей Мищенко on 20.02.2022.
//

import SwiftUI

struct ColorView: View {
    var color: Color
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(width: 350, height: 130)
            .cornerRadius(20)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .gray)
    }
}