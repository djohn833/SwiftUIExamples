//
//  ColorSlider.swift
//  SwiftUIExamples
//
//  Created by Dave Johnson on 8/3/20.
//  Copyright © 2020 Dave Johnson Studios. All rights reserved.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color

    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value)
            Text("255").foregroundColor(textColor)
        }
        .padding()
    }
}
