//
//  PickerExampleView.swift
//  SwiftUIExamples
//
//  Created by Dave Johnson on 8/3/20.
//  Copyright © 2020 Dave Johnson Studios. All rights reserved.
//

import SwiftUI

struct FormExampleView: View {
    private let languages = ["English", "Español", "Français", "Deutsch", "日本語"]

    @State private var isOn = false
    @State private var language = "English"

    @State private var defaultText = ""

    @State private var urlText = ""
    @State private var emailAddressText = ""
    @State private var twitterText = ""
    @State private var webSearchText = ""

    @State private var numbersAndPunctuationText = ""
    @State private var numberPadText = ""
    @State private var phonePadText = ""
    @State private var namePhonePadText = ""
    @State private var decimalPadText = ""

    @State private var asciiCapableText = ""
    @State private var asciiCapableNumberPadText = ""

    var body: some View {
        Form {
            Section(header: Text("Toggle")) {
                Toggle(isOn: $isOn) {
                    Text("On/Off")
                }
            }
            Section(header: Text("Picker")) {
                Picker("Language", selection: $language) {
                    ForEach (languages, id: \.self) {
                        Text($0)
                    }
                }
            }

            Section(header: Text("TextField")) {
                Group {
                    TextField(".default", text: $defaultText).keyboardType(.default)
                }

                Group {
                    TextField(".URL", text: $urlText).keyboardType(.URL)
                    TextField(".emailAddress", text: $emailAddressText).keyboardType(.emailAddress)
                    TextField(".twitter", text: $twitterText).keyboardType(.twitter)
                    TextField(".webSearch", text: $webSearchText).keyboardType(.webSearch)
                }

                Group {
                    TextField(".numbersAndPunctuation", text: $numbersAndPunctuationText).keyboardType(.numbersAndPunctuation)
                    TextField(".numberPad", text: $numberPadText).keyboardType(.numberPad)
                    TextField(".phonePad", text: $phonePadText).keyboardType(.phonePad)
                    TextField(".namePhonePad", text: $namePhonePadText).keyboardType(.namePhonePad)
                    TextField(".decimalPad", text: $decimalPadText).keyboardType(.decimalPad)
                }

                Group {
                    TextField(".asciiCapable", text: $asciiCapableText).keyboardType(.asciiCapable)
                    TextField(".asciiCapableNumberPad", text: $asciiCapableNumberPadText).keyboardType(.asciiCapableNumberPad)
                }
            }
        }
        .navigationBarTitle("Form")
    }
}

#if DEBUG
struct FormExampleView_Previews: PreviewProvider {
    static var previews: some View {
        FormExampleView()
    }
}
#endif
