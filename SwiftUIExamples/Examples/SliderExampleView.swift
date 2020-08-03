//
//  SliderExampleView.swift
//  SwiftUIExamples
//
//  Created by Dave Johnson on 8/3/20.
//  Copyright © 2020 Dave Johnson Studios. All rights reserved.
//

import SwiftUI

struct SliderExampleView: View {
    @State var rValue = 0.5
    @State var gValue = 0.5
    @State var bValue = 0.5

    var body: some View {
        VStack {
            VStack {
                Rectangle()
                    .foregroundColor(Color(red: rValue, green: gValue, blue: bValue, opacity: 1.0))
                HStack {
                    Text("R: \(Int(rValue * 255.0))")
                    Text("G: \(Int(gValue * 255.0))")
                    Text("B: \(Int(bValue * 255.0))")
                }
            }

            VStack {
                ColorSlider(value: $rValue, textColor: .red)
                ColorSlider(value: $gValue, textColor: .green)
                ColorSlider(value: $bValue, textColor: .blue)
            }
        }
        .navigationBarTitle("Slider")
    }
}

#if DEBUG
struct SliderExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SliderExampleView()
        }
    }
}
#endif
