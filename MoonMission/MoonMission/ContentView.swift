//
//  ContentView.swift
//  MoonMission
//
//  Created by Sajid Shanta on 25/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
        let missions: [Mission] = Bundle.main.decode("missions.json")
        
        VStack {
            Text("\(astronauts.count)")
            Text("\(missions.count)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
