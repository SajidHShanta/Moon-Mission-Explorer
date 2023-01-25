//
//  Bundle-Decodable.swift
//  MoonMission
//
//  Created by Sajid Shanta on 25/1/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ fileName: String) -> T {
        guard let url = self.url(forResource: fileName, withExtension: nil) else {
            fatalError("Failed to locate \(fileName) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(fileName) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(fileName) from bundle.")
        }

        return loaded
    }
}
