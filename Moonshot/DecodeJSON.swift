//
//  DecodeJSON.swift
//  Moonshot
//
//  Created by Juliano Goncalves Alvarenga on 02/01/20.
//  Copyright © 2020 Ciclic. All rights reserved.
//

import SwiftUI

struct User: Codable {
    var name: String
    var adress: Adress
}

struct Adress: Codable {
    var street: String
    var city: String
}

struct DecodeJSON: View {
    var body: some View {
        Button("Decode JSON") {
            let input =
            """
            {
                "name": "Taylor Swift",
                "adress": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """
            
            let data = Data(input.utf8)
            guard let user = try?
                JSONDecoder().decode(User.self, from: data)
                else { return }
            print(user.adress.street)
        }
    }
}

struct DecodeJSON_Previews: PreviewProvider {
    static var previews: some View {
        DecodeJSON()
    }
}
