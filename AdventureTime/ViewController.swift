//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bmoButton: UIButton!
    @IBOutlet weak var finnButton: UIButton!
    @IBOutlet weak var jakeButton: UIButton!
    @IBOutlet weak var lemongrabButton: UIButton!
    @IBOutlet weak var lumpyButton: UIButton!
    @IBOutlet weak var bubbleGumButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occuptationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    
    @IBOutlet weak var characterImageView: UIImageView!
    
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAllCharacters()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender.titleLabel!.text! {
        case "Finn":
            updateViews(with: finn)
        default:
            print("Default")
        }
        
    }
    
    func updateViews(with character: Character) {
        characterImageView.image = character.displayImage()
        nameLabel.text = character.name
        occuptationLabel.text = character.occupation
        speciesLabel.text = character.species
    }
    
    func createAllCharacters() {
        
        
    }

}

