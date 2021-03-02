//
//  Bundle-Decodable.swift
//  moonShot
//
//  Created by Pully on 02/03/21.
//

import Foundation
import SwiftUI

extension Bundle {
    func decode(_ file: String) -> [Astronaut] {
        
        // search the file and make a url
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("failed to locate \(file) in bundle.")
        }
        
        // load that file in data as JSON data type
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")
        }
        
        // decode that file
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([Astronaut].self, from: data) else {
            fatalError("fialed to decode \(file) from bundle")
        }
        return loaded
    }
    
}
