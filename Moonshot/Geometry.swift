//
//  ContentView.swift
//  Moonshot
//
//  Created by Juliano Goncalves Alvarenga on 01/01/20.
//  Copyright © 2020 Ciclic. All rights reserved.
//

import SwiftUI

struct Geometry: View {
    var body: some View {
        GeometryReader {
        Image(systemName: "pencil.and.outline")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: $0.size.width * 0.15, height: $0.size.width * 0.15)
        }
    }
}

struct Geometry_Previews: PreviewProvider {
    static var previews: some View {
        Geometry()
    }
}
