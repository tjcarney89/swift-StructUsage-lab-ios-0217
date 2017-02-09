//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAllCharacters()
    }

    @IBOutlet weak var nameLabel: UILabel!
  
    @IBOutlet weak var occupationLabel: UILabel!
    
    @IBOutlet weak var speciesLabel: UILabel!
    
    @IBOutlet weak var characterImageView: UIImageView!
    
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    
    func createAllCharacters() {
        finn = Character(name: "Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        jake = Character(name: "Jake The Dog", species: "Dog", occupation: "Hero", powerLevel: 20.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "Bubblegum", occupation: "Princess", powerLevel: 10.0)
        bmo = Character(name: "BMO", species: "MO", occupation: "Video Game System", powerLevel: 5.0)
        lemongrab = Character(name: "Lemongrab", species: "Lemon Candy", occupation: "Earl", powerLevel: 30.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Lumpy Space Person", occupation: "Princess", powerLevel: 15.0)
    }
    
    func updateViews(with character: Character!) {
        switch character.name {
        case "Finn The Human":
            characterImageView.image = finn.displayImage()
            nameLabel.text = "Name: \(finn.name)"
            speciesLabel.text = "Species: \(finn.species)"
            occupationLabel.text = "Occupation: \(finn.occupation)"
        case "Jake The Dog":
            characterImageView.image = jake.displayImage()
            nameLabel.text = "Name: \(jake.name)"
            speciesLabel.text = "Species: \(jake.species)"
            occupationLabel.text = "Occupation: \(jake.occupation)"
        case "Princess Bubblegum":
            characterImageView.image = bubblegum.displayImage()
            nameLabel.text = "Name: \(bubblegum.name)"
            speciesLabel.text = "Species: \(bubblegum.species)"
            occupationLabel.text = "Occupation: \(bubblegum.occupation)"
        case "BMO":
            characterImageView.image = bmo.displayImage()
            nameLabel.text = "Name: \(bmo.name)"
            speciesLabel.text = "Species: \(bmo.species)"
            occupationLabel.text = "Occupation: \(bmo.occupation)"
        case "Lemongrab":
           characterImageView.image = lemongrab.displayImage()
            nameLabel.text = "Name: \(lemongrab.name)"
            speciesLabel.text = "Species: \(lemongrab.species)"
            occupationLabel.text = "Occupation: \(lemongrab.occupation)"
        case "Lumpy Space Princess":
            characterImageView.image = lsp.displayImage()
            nameLabel.text = "Name: \(lsp.name)"
            speciesLabel.text = "Species: \(lsp.species)"
            occupationLabel.text = "Occupation: \(lsp.occupation)"
        default:
            nameLabel.text = "Name"
            speciesLabel.text = "Species"
            occupationLabel.text = "Occupation"
            
        }
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender.titleLabel!.text! {
        case "Finn":
            updateViews(with: finn)
        case "Jake":
            updateViews(with: jake)
        case "Bubblegum":
            updateViews(with: bubblegum)
        case "BMO":
            updateViews(with: bmo)
        case "Lemongrab":
            updateViews(with: lemongrab)
        case "LSP":
            updateViews(with: lsp)
        default:
            nameLabel.text = "Name"
            speciesLabel.text = "Species"
            occupationLabel.text = "Occupation"
        }

    }
    
    
}

