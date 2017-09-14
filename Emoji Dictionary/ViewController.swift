//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Kevin Wright on 9/12/17.
//  Copyright © 2017 Kevin Wright. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolTableView: UITableView!
    //var emojies = [ "😎","😇","😎","🤡","🤠","😱","😨","😷","🙏🏽","👰🏼","🐶","🐱","🐭","🦊","🐹","🐝","⛑","🐬"]
    var emojies : [Emoji] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableView.dataSource = self
        coolTableView.delegate = self
        emojies = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //returns an Int
        return emojies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        //print(indexPath.row)
        
        let cell = UITableViewCell()
        //cell.textLabel?.text = "😎 cool"
        let emoji = emojies[indexPath.row]
        cell.textLabel?.text = emoji.emojiString
        

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojies[indexPath.row]
        //performSegue(withIdentifier: "moveSegue", sender: "🎸")
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print(sender as Any)
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.emojiString = "😎"
        emoji1.definition = " A cool guy with sunglasses"
        emoji1.birthYear = 2010
        emoji1.category = "Smileys and People"

        let emoji2 = Emoji()
        emoji2.emojiString = "😇"
        emoji2.definition = "Smiley Face with Halo"
        emoji2.birthYear = 2008
        emoji2.category = "Smileys and People"
        
        let emoji3 = Emoji()
        emoji3.emojiString = "😱"
        emoji3.definition = "Face Screaming in Fear!"
        emoji3.birthYear = 2011
        emoji3.category = "Smileys and People"
        
        let emoji4 = Emoji()
        emoji4.emojiString = "🤠"
        emoji4.definition = "Cowboy Face!"
        emoji4.birthYear = 2011
        emoji4.category = "Smileys and People"
  
        let emoji5 = Emoji()
        emoji5.emojiString = "🐶"
        emoji5.definition = "A cute puppy!"
        emoji5.birthYear = 2012
        emoji5.category = "Animal"
        
        let emoji6 = Emoji()
        emoji6.emojiString = "🐹"
        emoji6.definition = "A cute hamster!"
        emoji6.birthYear = 2012
        emoji6.category = "Animal"
        
        let emoji7 = Emoji()
        emoji7.emojiString = "👠"
        emoji7.definition = "High healed shoe!"
        emoji7.birthYear = 2014
        emoji7.category = "Thing"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]

    }


}

