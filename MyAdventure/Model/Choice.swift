//
//  Choice.swift
//  MyAdventure
//
//
//

import Foundation

struct Choice {
    
    init(_ text: String, _ c_one:String, _ c_two: String) {
        adventureText = text
        choice1 = c_one
        choice2 = c_two
    }
    
    var adventureText: String
    var choice1: String
    var choice2: String
}
