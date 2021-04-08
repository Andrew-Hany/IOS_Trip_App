//
//  first_swift_appApp.swift
//  first_swift_app
//
//  Created by auc on 4/8/21.
//

import SwiftUI

@main
struct first_swift_appApp: App {
    @StateObject var locations=Locations()
    var body: some Scene {
        WindowGroup {
            TabView{
            NavigationView{
                ContentView(location: locations.primary)
                }.tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("discover")
                }
                
                NavigationView{
                    WorldView()
                    }.tabItem {
                        Image(systemName: "star.fill")
                        Text("Locations")
                    }
                
                NavigationView{
                    TipsView()
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }.environmentObject(locations)
            
        }
    }
}
