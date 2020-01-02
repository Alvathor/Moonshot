//
//  Mission.swift
//  Moonshot
//
//  Created by Juliano Goncalves Alvarenga on 02/01/20.
//  Copyright © 2020 Ciclic. All rights reserved.
//

import Foundation


struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    var displayName: String {
        "Apollo\(id)"
    }
    var image: String {
        "apollo\(id)"
    }
    var formattedLauchDate: String {
        if let lauchDate = launchDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .full
            return formatter.string(from: lauchDate)
        } else {
            return "N/A"
        }
    }
}
