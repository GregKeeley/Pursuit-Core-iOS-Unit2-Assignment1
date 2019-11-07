//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gameButton1: GameButton!
    @IBOutlet weak var gameButton2: GameButton!
    @IBOutlet weak var gameButton3: GameButton!
    @IBOutlet weak var gameButton4: GameButton!
    @IBOutlet weak var gameButton5: GameButton!
    @IBOutlet weak var gameButton6: GameButton!
    @IBOutlet weak var gameButton7: GameButton!
    @IBOutlet weak var gameButton8: GameButton!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    var activePlayer = 1
    var gameState = [0,0,0,0,0,0,0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Welcome to Tic Tac Toe?"
    }
    func gameCheck(button: GameButton) -> Bool {
    return true
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        if (gameState[sender.tag] == 0) {
            if activePlayer == 1 {
                sender.setTitle("X", for: .normal)
                activePlayer = 2
                gameState[sender.tag] = 1
                print(activePlayer)
                print(gameState)
                mainLabel.text = "Player 2s turn"
            } else {
                sender.setTitle("O", for: .normal)
                activePlayer = 1
                gameState[sender.tag] = 1
                print(activePlayer)
                print(gameState)
                mainLabel.text = "Player 1s turn"
            }
        }
    }
  
    
}
