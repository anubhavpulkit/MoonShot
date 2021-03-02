//
//  ContentView.swift
//  moonShot
//
//  Created by Pully on 01/03/21.
//

import SwiftUI

struct User: Codable {
    var name: String
    var address: Address
}

struct Address: Codable {
    var street: String
    var city: String
}



struct ContentView: View {
    
    let astronaut: [Astronaut] = Bundle.main.decode("astronauts.json")
    let mission: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack{
            Text("\(astronaut.count)")
            Text("\(mission.count)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
