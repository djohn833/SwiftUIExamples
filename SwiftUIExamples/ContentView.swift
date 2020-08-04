//
//  ContentView.swift
//  SwiftUIExamples
//
//  Created by Dave Johnson on 8/2/20.
//  Copyright © 2020 Dave Johnson Studios. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ButtonExampleView()) {
                    Text("Button")
                }
                NavigationLink(destination: FormExampleView()) {
                    Text("Form")
                }
                NavigationLink(destination: TabExampleView()) {
                    Text("Tab")
                }
                NavigationLink(destination: ListExampleView()) {
                    Text("List")
                }
                NavigationLink(destination: GroupedListExampleView()) {
                    Text("List - Grouped")
                }
                NavigationLink(destination: SliderExampleView()) {
                    Text("Slider")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Swift UI Examples")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
