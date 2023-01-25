//
//  Astronaut.swift
//  MoonMission
//
//  Created by Sajid Shanta on 25/1/23.
//

import Foundation

struct Astronaut: Codable, Identifiable {
    //note: conform to Codable so we can create instances of this struct straight from JSON
    let id: String
    let name: String
    let description: String
}
