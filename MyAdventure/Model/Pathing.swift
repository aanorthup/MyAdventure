//
//  Pathing.swift
//  MyAdventure
//
//
//

import Foundation

class Pathing {
    var path : Int = 0
    
    let choice = [
        Choice("Without explanation, you find yourself standing in front of a castle with dark woods behind you.", "Go into the castle", "Go into the woods"),
        Choice("The castle is vast, beyond the giant ceiling and the long stone floor you see a guard coming towards you.", "Avoid the guard - go into the nearest room", "Approach the guard and ask for help"),
        Choice("You hear animal howls throughout the woods. A path branches in front of you, one way is clear and sunny, the other dark with twisted trees bending overhead.", "Follow the sunny path", "Follow the dark path")
                  
    ]
    
    func nextChoice(_ chosen: String) {
        if chosen == choice[path].choice1 {
            path += 1
        }
        else {
            path += 2
        }
    }
    
    
    func getText() -> String {
        return choice[path].adventureText
    }
    
    func getChoiceOne() -> String {
        return choice[path].choice1
    }
    
    func getChoiceTwo() -> String {
        return choice[path].choice2
        
    }
    

    
}
