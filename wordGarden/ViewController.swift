//
//  ViewController.swift
//  wordGarden
//
//  Created by Brennan Twiggs on 1/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsInGameLabel: UILabel!
    
    @IBOutlet weak var wordBeingRevealedLabel: UITextField!
    @IBOutlet weak var guessLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessLetterField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)

    }
    func updateUIAfterGuess() {
        guessLetterField.resignFirstResponder()
        guessLetterField.text! = ""
        guessLetterButton.isEnabled = false
    }

    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        let text = guessLetterField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        //this dismisses the keyboard
        updateUIAfterGuess()
    }
    

    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        //this dismisses the keyboard
        updateUIAfterGuess()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}

