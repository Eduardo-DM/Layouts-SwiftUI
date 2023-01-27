//
//  ContentView.swift
//  Layouts
//
//  Created by Eduardo Developer on 27/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BackgroundLinkedIn()
                .tabItem {
                    Label("LinkedIn", systemImage: "network")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
