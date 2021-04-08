//
//  location.swift
//  first_swift_app
//
//  Created by auc on 4/8/21.
//

import Foundation


struct Location: Decodable,Identifiable {
    let id:Int
    let name:String
    let country:String
    let description:String
    let more: String
    let latitude:Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
}
