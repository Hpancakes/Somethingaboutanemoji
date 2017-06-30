//
//  ViewController.swift
//  Somwthing abt an Emoji
//
//  Created by JoseLuis Lara VIllanueva on 6/28/17.
//  Copyright © 2017 Pachuca Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojiArray : [Emoji] = [ ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojiArray = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojiArray[indexPath.row]
        cell.textLabel?.text =  emoji.iconEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojiArray[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let deFVC = segue.destination as! DefinitionViewController
        deFVC.emoji = sender as! Emoji
        // I dont really know what is this?
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.iconEmoji = "😖"
        emoji1.origin = 2008
        emoji1.category = "Smily"
        emoji1.definition = "Whatever like if it was important"
        
        let emoji2 = Emoji()
        emoji2.iconEmoji = "😑"
        emoji2.origin = 2009
        emoji2.category = "face"
        emoji2.definition = "Po po poker face"
        
        let emoji3 = Emoji()
        emoji3.iconEmoji = "🤡"
        emoji3.origin = 2010
        emoji3.category = "Un Payaso"
        emoji3.definition = "I guess nothing important"
        
        let emoji4 = Emoji()
        emoji4.iconEmoji = "😡"
        emoji4.origin = 2009
        emoji4.category = "Cara"
        emoji4.definition = "Enojado"
        
        let emoji5 = Emoji()
        emoji5.iconEmoji = "💩"
        emoji5.origin = 2008
        emoji5.category = "Funny"
        emoji5.definition = "poop"
        
        let emoji6 = Emoji()
        emoji6.iconEmoji = "🤣"
        emoji6.origin = 2009
        emoji6.category = "cara"
        emoji6.definition = "risa"
                
        let emoji7 = Emoji()
        emoji7.iconEmoji = "😵"
        emoji7.origin = 2009
        emoji7.category = "omg"
        emoji7.definition = "I cant belive it"
        
        let emoji8 = Emoji()
        emoji8.iconEmoji = "🤑"
        emoji8.origin = 2009
        emoji8.category = "Nice"
        emoji8.definition = "Show me the money"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
            
    }
    

}

