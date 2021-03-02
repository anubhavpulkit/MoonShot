//
//  ContentView.swift
//  moonShot
//
//  Created by Pully on 01/03/21.
//

import SwiftUI

struct ContentView: View {
    
    let astronaut: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        
        NavigationView {
            List(missions) { mission in
                NavigationLink(destination: Text("Detail view")) {
                    Image(mission.image)
                        .resizable()
                        .scaleToFit()
                        .frame(width: 44, height: 44)

                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                        Text(mission.launchDate ?? "N/A")
                    }
                }
            }
            .navigationBarTitle("Moonshot")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
