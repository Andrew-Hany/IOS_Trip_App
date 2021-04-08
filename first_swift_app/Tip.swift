//
//  Tip.swift
//  first_swift_app
//
//  Created by auc on 4/8/21.
//

import Foundation

struct Tip:Decodable{

    let text:String
    let children:[Tip]?
    
}
