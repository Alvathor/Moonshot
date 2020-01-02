//
//  ScrollViewView.swift
//  Moonshot
//
//  Created by Juliano Goncalves Alvarenga on 01/01/20.
//  Copyright © 2020 Ciclic. All rights reserved.
//

import SwiftUI

struct CustomText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText") // Showing instance creation
        self.text = text
    }
}

struct Scroll: View {
    var body: some View {
        //MARK: When using Scroll all the custom text instances are created immediately
//        ScrollView(.vertical) {
//            VStack(spacing: 10) {
        //MARK: When using Scroll all the custom text instances are created on demand
        List {
            ForEach(0..<100) {
                CustomText("Item \($0)")
                    .font(.title)
            }
        }
//            }
//            .frame(maxWidth: .infinity)
//        }
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
