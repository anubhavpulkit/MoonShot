//
//  MissionView.swift
//  moonShot
//
//  Created by Pully on 03/03/21.
//

import SwiftUI

struct MissionView: View {
    
    let mission: Mission
    
    var body: some View {
        NavigationView{
            GeometryReader{ geo in
                ScrollView(.vertical){
                    VStack{
                        
                        Image(self.mission.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: geo.size.width * 0.7)
                            .padding()
                        
                        Text(self.mission.description)
                            .padding()
                        
                        Spacer(minLength: 24)
                    }
                }
                .navigationBarTitle(Text(mission.displayName), displayMode: .inline)
            }
        }
    }
}

struct MissionView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        MissionView(mission: missions[0])
    }
}
