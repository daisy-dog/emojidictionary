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
    
    var emojies = [ "😎","😇","😎","🤡","🤠","😱","😨","😷","🙏🏽","👰🏼","🐶","🐱","🐭","🦊","🐹","🐝","⛑","🐬"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableView.dataSource = self
        coolTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10
        return emojies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        //print(indexPath.row)
        
        let cell = UITableViewCell()
        //cell.textLabel?.text = "😎 cool"
        cell.textLabel?.text = emojies[indexPath.row]

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojies[indexPath.row]
        //performSegue(withIdentifier: "moveSegue", sender: "🎸")
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(sender as Any)
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

