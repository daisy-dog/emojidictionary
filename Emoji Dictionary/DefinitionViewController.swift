//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Kevin Wright on 9/13/17.
//  Copyright © 2017 Kevin Wright. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    //properties of the class
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    //var emoji = "no emoji"
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()
        //print(emoji)
        
        emojiLabel.text = emoji.emojiString
        birthYearLabel.text = "Origination Year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
        
//        let birthYearString = "Origination Date: "
//        
//        switch emoji {
//        case  "😎":
//            definitionLabel.text = "super cool"
//            categoryLabel.text = "Category: Smileys and People"
//            birthYearLabel.text = "\(birthYearString) 2009"
//        case  "😇":
//            definitionLabel.text = "Smiley Face with Halo"
//            categoryLabel.text = "Category: Smileys and People"
//            birthYearLabel.text = "\(birthYearString) 2011"
//        case  "😱":
//            definitionLabel.text = "Face Screaming in Fear!"
//            categoryLabel.text = "Category: Smileys and People"
//            birthYearLabel.text = "\(birthYearString) 2011"
//        case  "🤠":
//            definitionLabel.text = "Cowboy Face!"
//            categoryLabel.text = "Category: Smileys and People"
//            birthYearLabel.text = "\(birthYearString) 2011"
//        case "🐶":
//            definitionLabel.text = "a cute puppy"
//            categoryLabel.text = "Category: Animal"
//            birthYearLabel.text = "\(birthYearString) 2011"
//        case "🐹":
//            definitionLabel.text = "a cute hamster"
//            categoryLabel.text = "Category: Animal"
//            birthYearLabel.text = "\(birthYearString) 2011"
//        case "🐬":
//            definitionLabel.text = "a cute dolphin"
//            categoryLabel.text = "Category: Animal"
//            birthYearLabel.text = "\(birthYearString) 2011"
//        case "🦊":
//            definitionLabel.text = "a cute fox"
//            categoryLabel.text = "Category: Animal"
//            birthYearLabel.text = "\(birthYearString) 2011"
//        case "🤡":
//            definitionLabel.text = "a cute clown"
//            categoryLabel.text = "Category: Smileys and People"
//            birthYearLabel.text = "\(birthYearString) 2011"
//        default:
//            
//            definitionLabel.text = "I give up"
//            categoryLabel.text = "unkown category"
//            birthYearLabel.text = "\(birthYearString) 2005"
//            
//        }
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
//    }
    // method
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    



}
