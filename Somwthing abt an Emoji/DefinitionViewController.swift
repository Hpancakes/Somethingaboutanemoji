//
//  DefinitionViewController.swift
//  Somwthing abt an Emoji
//
//  Created by JoseLuis Lara VIllanueva on 6/28/17.
//  Copyright © 2017 Pachuca Inc. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var labelEmoji: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var metodoLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        labelEmoji.text = emoji.iconEmoji
        descLabel.text = emoji.definition
        categoryLabel.text = emoji.category
        metodoLabel.text = "El año fue \(emoji.origin)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
