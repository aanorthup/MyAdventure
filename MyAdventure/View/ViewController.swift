//
//  ViewController.swift
//  MyAdventure
//
//  Created by Ashley Northup on 2/11/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var storyText: UILabel!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonOne: UIButton!
    
    var choicePath = Pathing()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        //get input for which choice was made
        let chosen = sender.titleLabel!.text!
        
        choicePath.nextChoice(chosen)
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        storyText.text = choicePath.getText()
        buttonOne.setTitle(choicePath.getChoiceOne(), for: .normal)
        buttonTwo.setTitle(choicePath.getChoiceTwo(), for: .normal)
        
        
    }
}

