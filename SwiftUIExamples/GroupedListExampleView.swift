//
//  GroupedListExampleView.swift
//  SwiftUIExamples
//
//  Created by Dave Johnson on 8/2/20.
//  Copyright © 2020 Dave Johnson Studios. All rights reserved.
//

import SwiftUI

struct GroupedListExampleView: View {
    var body: some View {
        List {
            ForEach(1..<3) { section in
                Section(header: Text("\(section)")) {
                    ForEach(1..<4) { item in
                        NavigationLink(destination: Text("\(section).\(item)")) {
                            Text("\(section).\(item)")
                        }
                    }
                }
            }
        }
        .navigationBarTitle("Grouped List")
        .listStyle(GroupedListStyle())
    }
}

#if DEBUG
struct GroupedListExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GroupedListExampleView()
        }
    }
}
#endif
