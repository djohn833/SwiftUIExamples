//
//  TabExampleView.swift
//  SwiftUIExamples
//
//  Created by Dave Johnson on 8/3/20.
//  Copyright © 2020 Dave Johnson Studios. All rights reserved.
//

import SwiftUI

struct TabExampleView: View {
    var body: some View {
        TabView {
            ListExampleView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                }

            GroupedListExampleView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("List - Grouped")
                }
        }
        .navigationBarTitle("Tab")
    }
}

#if DEBUG
struct TabExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TabExampleView()
        }
    }
}
#endif
