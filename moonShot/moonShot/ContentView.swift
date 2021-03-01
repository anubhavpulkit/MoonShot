//
//  ContentView.swift
//  moonShot
//
//  Created by Pully on 01/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            List(0..<50){ row in
                
                NavigationLink(destination: Text("Detail row \(row)"))
                {
                    Text("Row \(row)")
                }
            }
            .navigationTitle("New View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
