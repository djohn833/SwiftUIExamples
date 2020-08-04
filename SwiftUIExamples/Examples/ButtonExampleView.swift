//
//  ButtonExampleView.swift
//  SwiftUIExamples
//
//  Created by Dave Johnson on 8/3/20.
//  Copyright © 2020 Dave Johnson Studios. All rights reserved.
//

import SwiftUI

struct ButtonExampleView: View {
    @State var showAlert = false

    var body: some View {
        List {
            Button(action: {
                self.showAlert = true
            }) {
                Text("Show Alert")
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Alert"), message: Text("Boo!"))
            }
        }
        .navigationBarTitle("Button")
    }
}

#if DEBUG
struct ButtonExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ButtonExampleView()
        }
    }
}
#endif
