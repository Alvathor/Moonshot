//
//  NavSample.swift
//  Moonshot
//
//  Created by Juliano Goncalves Alvarenga on 01/01/20.
//  Copyright © 2020 Ciclic. All rights reserved.
//

import SwiftUI

struct NavSample: View {
    var body: some View {
        NavigationView {
            VStack {
                List(0..<100) { row in
                    NavigationLink(destination: Text("Detail \(row)")) {
                        Text("Row \(row)")
                    }
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct NavSample_Previews: PreviewProvider {
    static var previews: some View {
        NavSample()
    }
}
