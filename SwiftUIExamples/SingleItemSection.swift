//
//  SingleItemSection.swift
//  SwiftUIExamples
//
//  Created by Dave Johnson on 8/3/20.
//  Copyright © 2020 Dave Johnson Studios. All rights reserved.
//

import SwiftUI

struct SingleItemSection<T: View>: View {
    var name: String
    var destination: T

    var body: some View {
        Section(header: Text(name)) {
            NavigationLink(destination: destination) {
                Text(name)
            }
        }
    }
}
