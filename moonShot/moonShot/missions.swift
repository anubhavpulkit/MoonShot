//
//  missions.swift
//  moonShot
//
//  Created by Pully on 02/03/21.
//

import Foundation
import SwiftUI



struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable{
        var name: String
        var role: String
    }
    
    var id: Int
    var launchDate: String?
    var crew: [CrewRole]
    var description: String
}

