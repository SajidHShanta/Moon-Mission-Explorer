//
//  ContentView.swift
//  MoonMission
//
//  Created by Sajid Shanta on 25/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let astronauts = Bundle.main.decode("astronauts.json")
        
        VStack {
            Text("\(astronauts.count)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
