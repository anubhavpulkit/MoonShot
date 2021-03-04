//
//  Bundle-Decodable.swift
//  moonShot
//
//  Created by Pully on 02/03/21.
//

import Foundation
import SwiftUI

// extension for decode JSON into an array of structs

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // search the file and make a url
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("failed to locate \(file) in bundle.")
        }
        
        // load that file in data as JSON data type
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")
        }
        
        // decode that file from JSON
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("fialed to decode \(file) from bundle")
        }
        return loaded
    }
    
}
