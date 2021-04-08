//
//  locatoins.swift
//  first_swift_app
//
//  Created by auc on 4/8/21.
//

import Foundation

class Locations: ObservableObject {
    let places :[Location]
    var primary:Location {
        places[1]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try!Data(contentsOf: url)
        places=try!JSONDecoder().decode([Location].self, from:data)
    }
}
