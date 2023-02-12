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
        //0
        Choice("Without explanation, you find yourself standing in front of a castle with dark woods behind you.", "Go into the castle", "Go into the woods"),
        //1
        Choice("The castle is vast, beyond the giant ceiling and the long stone floor you see a guard coming towards you.", "Avoid the guard - go into the nearest room", "Approach the guard and ask for help"),
        //2
        Choice("The room is filled with treasure - and a dragon! Oh no.", "Call for help", "Slowly back away"),
        //3
        Choice("You call for help - the guard slays the dragon and when you tell him your trouble, nods and says he'll help you find your way home. It may take awhile, but at least you've made a friend.", "Restart", "Restart"),
        //4
        Choice("You approach the guard - but he mistakes you for an assasin! His spear is at your neck before you can argue. 'Who are you?'", "Tell the truth", "Sarcastically say you're an assasin."),
        //5
        Choice("You start to slowly back away from the dragon - but it notices you!", "Say hello","Run!"),
        //6
        Choice("You hear animal howls throughout the woods. A path branches in front of you, one way is clear and sunny, the other dark with twisted trees bending overhead.", "Follow the sunny path", "Follow the dark path"),
        //7
        Choice("You follow the sunny path, and as you continue you notice the sun is getting stronger. And stronger. Too strong.", "Turn back", "Keep going"),
        //8
        Choice("You go down the dark path - and hear a cry for help!", "Go help", "Not your problem, keep walking."),
        //9
        Choice("You hear something slithering behind you. The longer you walk, the louder it gets, until you can't ignore it anymore.", "Face it.", "Run away"),
        //10
        Choice("You find a person falling into quicksand and help him. He smiles, and offers to help you. On your walk back, you find out he's the king of this land! He even knows what magic sent you here, and sends you home in time for dinner. Good job!", "Restart", "Restart"),
        //11
        Choice("You run away - but feel a sharp stab in your back. The poison spreads before you can see what go you. You never get up again.", "Restart", "Restart"),
        //12
        Choice("You turn around and face a giant serpent. It moves back in surprise at being faced. A soldier sees and comes running to you. By dumb luck, you become a hero in this world. Unfortunately, you don't find your way home.", "Restart", "Restart"),
        //13
        Choice("The dragon smiles a toothy grin. 'It's been a long time since anyone was polite this room.' You didn't find your way home, but you made a powerful friend. That's something.", "Restart", "Restart"),
        //14
        Choice("As soon as you turn you're burnt to a crisp. Just a snack for the dragon.", "Restart", "Restart"),
        //15
        Choice("You tell him the truth. He lowers his spear and nods. 'The king has been missing for a few days, but when he returns he's sure to help you.' You're fed well, but the king never returns. Maybe he needed help?", "Restart", "Restart"),
        //16
        Choice("You're thrown in jail. Forever. Whoops.", "Restart", "Restart"),
        //17
        Choice("Oh no, it's too late! You melt. Whoops.", "Restart", "Restart"),
        //18
        Choice("You keep going - and find soldiers returning with plenty of water and umbrellas for shade. They help you back, and feed you. You live, but you don't get home.", "Restart", "Restart")
        
        
        
                  
    ]
    
    func nextChoice(_ chosen: String) {
        switch chosen {
        case "Go into the castle":
            path = 1
        case "Avoid the guard - go into the nearest room":
            path = 2
        case "Call for help":
            path = 3
        case "Approach the guard and ask for help":
            path = 4
        case "Slowly back away":
            path = 5
        case "Go into the woods":
            path = 6
        case "Follow the sunny path":
            path = 7
        case "Follow the dark path":
            path = 8
        case "Not your problem, keep walking.":
            path = 9
        case "Go help":
            path = 10
        case "Run away":
            path = 11
        case "Face it.":
            path = 12
        case "Say hello":
            path = 13
        case "Run!":
            path = 14
        case "Tell the truth":
            path = 15
        case "Sarcastically say you're an assasin.":
            path = 16
        case "Turn back":
            path = 17
        case "Keep going":
            path = 18
        default:
            path = 0
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
