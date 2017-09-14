//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Kevin Wright on 9/13/17.
//  Copyright © 2017 Kevin Wright. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "no emoji"

    override func viewDidLoad() {
        super.viewDidLoad()
        //print(emoji)
        emojiLabel.text = emoji
        
        switch emoji {
        case  "😎":
            definitionLabel.text = "super cool"
        case "🐶":
            definitionLabel.text = "a cute puppy"
        case "🐹":
            definitionLabel.text = "a cute hamster"
        case "🐬":
            definitionLabel.text = "a cute dolphin"
        case "🦊":
            definitionLabel.text = "a cute fox"
        case "🤡":
            definitionLabel.text = "a cute clown"
        default:
            
            definitionLabel.text = "I give up"
            
        }
//        if emoji == "🐹"{
//            definitionLabel.text = "a cute hamster"
//        }
//        if emoji == "🐬"{
//            definitionLabel.text = "a cute dolphin"
//        }
//        else {
//            definitionLabel.text = "I give up."
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    



}
