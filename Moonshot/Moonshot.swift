//
//  Moonshot.swift
//  Moonshot
//
//  Created by Juliano Goncalves Alvarenga on 02/01/20.
//  Copyright © 2020 Ciclic. All rights reserved.
//

import SwiftUI

struct Moonshot: View {
    
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            List(missions) { mission in
                NavigationLink(destination:
                    MissionView(mission: mission, astronauts: self.astronauts)) {
                    Image(mission.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 44, height: 44)
                    
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                        Text(mission.formattedLauchDate)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle("Moonshot")
        }
    }
}

struct Moonshot_Previews: PreviewProvider {
    static var previews: some View {
        Moonshot()
    }
}
