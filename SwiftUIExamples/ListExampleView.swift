//
//  ListExampleView.swift
//  SwiftUIExamples
//
//  Created by Dave Johnson on 8/2/20.
//  Copyright © 2020 Dave Johnson Studios. All rights reserved.
//

import SwiftUI

struct ListExampleView: View {
    var body: some View {
        List {
            ForEach(1..<5) { item in
                NavigationLink(destination: Text("\(item)")) {
                    Text("\(item)")
                }
            }
        }
        .navigationBarTitle("List")
    }
}

#if DEBUG
struct ListExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListExampleView()
        }
    }
}
#endif
