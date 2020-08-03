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
                Section(header: Text("List")) {
                    NavigationLink(destination: ListExampleView()) {
                        Text("List")
                    }
                    NavigationLink(destination: GroupedListExampleView()) {
                        Text("Grouped List")
                    }
                }
            }
            .navigationBarTitle("Swift UI Examples")
            .listStyle(GroupedListStyle())
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
