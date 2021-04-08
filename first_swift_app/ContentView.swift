//
//  ContentView.swift
//  first_swift_app
//
//  Created by auc on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    let location:Location
    var body: some View {
        
        ScrollView{
            Image(location.heroPicture)
            .resizable()
            .scaledToFit()
        
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
                
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did yoy know")
                .font(.title3)
                .bold()
                .padding(.top)
            Text(location.more)
                .padding(.horizontal)
                
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
        NavigationView{
            ContentView(location: Locations().primary)
        }.tabItem {
            Image(systemName: "airplane.circle.fill")
            Text("discover")
        }
        }
    }
}
