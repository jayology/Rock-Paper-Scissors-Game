//
//  ViewController.swift
//  Rock Paper Scisors
//
//  Created by juron clarke on 3/29/15.
//  Copyright (c) 2015 jayology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var comScore: UILabel!
    
    @IBOutlet weak var drawScore: UILabel!
    
    @IBOutlet weak var myScore: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var scoreAlert = UIAlertView()
    
    let rpsArray = ["Rock", "Paper", "Scissors"]
    var draw = 0
    var computer = 0
    var player = 0
    
    
    @IBAction func rockBtn(sender: UIButton) {
        
        
        
        let rpsRand = rpsArray[Int(arc4random_uniform(UInt32(rpsArray.count)))]
        
    
       
        if "Rock" == rpsRand {
        
        scoreAlert.title = "Score"
            scoreAlert.message = "Its a draw! "
            scoreAlert.addButtonWithTitle("OK")
            scoreAlert.show()
            draw++
            drawScore.text = "\(draw)"
            
        }
        
        if rpsRand == rpsArray[1] {
            scoreAlert.title = "The computer won"
            scoreAlert.message = "Sorry but \(rpsRand) beats Rock 😭"
            scoreAlert.addButtonWithTitle("OK")
            scoreAlert.show()
            computer++
            comScore.text = "\(computer)"
        } else {
        
        if rpsRand == "Rock" {
            
            scoreAlert.title = "Score"
            scoreAlert.message = "Its a draw! "
            scoreAlert.addButtonWithTitle("OK")
            scoreAlert.show()
            draw - 2
            drawScore.text = "\(draw)"

        } else {
            
            scoreAlert.title = "You won!"
            scoreAlert.message = "Rock beats \(rpsRand) 😀"
            scoreAlert.addButtonWithTitle("OK")
            scoreAlert.show()
            player++
            myScore.text = "\(player)"

            
            }
            
        }
    }
    
    
    
    @IBAction func paperBtn(sender: UIButton) {
        
        let rpsRand = rpsArray[Int(arc4random_uniform(UInt32(rpsArray.count)))]
        
        
        
        if "Paper" == rpsRand {
            
            scoreAlert.title = "Score"
            scoreAlert.message = "Its a draw! "
            scoreAlert.addButtonWithTitle("OK")
            scoreAlert.show()
            draw++
            drawScore.text = "\(draw)"
            
        }
        
        if rpsRand == rpsArray[2] {
            scoreAlert.title = "The computer won"
            scoreAlert.message = "Sorry but \(rpsRand) beats Paper 😭"
            scoreAlert.addButtonWithTitle("OK")
            scoreAlert.show()
            computer++
            comScore.text = "\(computer)"
        } else {
            
            if rpsRand == "Paper" {
                
                scoreAlert.title = "Score"
                scoreAlert.message = "Its a draw! "
                scoreAlert.addButtonWithTitle("OK")
                scoreAlert.show()
                draw - 2
                drawScore.text = "\(draw)"
                
            } else {
                
                scoreAlert.title = "You won!"
                scoreAlert.message = "Paper beats \(rpsRand) 😀"
                scoreAlert.addButtonWithTitle("OK")
                scoreAlert.show()
                player++
                myScore.text = "\(player)"
                
                
            }
            
        }
        
    }
    
    
    
    @IBAction func scissorsBtn(sender: UIButton) {
        
        let rpsRand = rpsArray[Int(arc4random_uniform(UInt32(rpsArray.count)))]
        
        
        
        if "Scissors" == rpsRand {
            
            scoreAlert.title = "Score"
            scoreAlert.message = "Its a draw! "
            scoreAlert.addButtonWithTitle("OK")
            scoreAlert.show()
            draw++
            drawScore.text = "\(draw)"
            
        }
        
        if rpsRand == rpsArray[0] {
            scoreAlert.title = "The computer won"
            scoreAlert.message = "Sorry but \(rpsRand) beats Scissors 😭"
            scoreAlert.addButtonWithTitle("OK")
            scoreAlert.show()
            computer++
            comScore.text = "\(computer)"
        } else {
            
            if rpsRand == "Scissors" {
                
                scoreAlert.title = "Score"
                scoreAlert.message = "Its a draw! "
                scoreAlert.addButtonWithTitle("OK")
                scoreAlert.show()
                draw - 2
                drawScore.text = "\(draw)"
                
            } else {
                
                scoreAlert.title = "You won!"
                scoreAlert.message = "Scisors beats \(rpsRand) 😀"
                scoreAlert.addButtonWithTitle("OK")
                scoreAlert.show()
                player++
                myScore.text = "\(player)"
                
                
            }
            
        }

        
    }
    

    
    
    
    
    


}

