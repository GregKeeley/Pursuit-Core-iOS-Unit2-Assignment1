//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var gameButtons: [GameButton]!
    @IBOutlet weak var mainLabel: UILabel!
    
    
    
    var activePlayer = 1
    var gameState = [0,0,0,0,0,0,0,0,0]
    var player1Arr = [(Int, Int)]()
    var player2Arr = [(Int, Int)]()
    var gameStatus = TicTacToeBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Welcome to Tic Tac Toe"
    }

    @IBAction func buttonPressed(_ sender: GameButton) {
        
        if (gameState[sender.tag] == 0) {
            if activePlayer == 1 {
                sender.setTitle("X", for: .normal)
                
                activePlayer = 2
                gameState[sender.tag] = 1
                player1Arr.append((sender.col, sender.row))
                print(player1Arr)
                gameStatus.checkGame()
                mainLabel.text = "Player 2s turn"
            } else {
                sender.setTitle("O", for: .normal)
                activePlayer = 1
                gameState[sender.tag] = 2
                player2Arr.append((sender.col, sender.row))
                print(player2Arr)
                gameStatus.checkGame()
                mainLabel.text = "Player 1s turn"
            }
        }
    }
  
    
}
