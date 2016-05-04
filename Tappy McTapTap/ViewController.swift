//
//  ViewController.swift
//  Tappy McTapTap
//
//  Created by Matt Gambino on 4/27/16.
//  Copyright © 2016 AJ Cerbo. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics
import Social

class ViewController: UIViewController {
    
    
    //Top label and button to call "Tap"

    
    @IBOutlet var TopLabel: UILabel!
    @IBOutlet var TopButton: UIButton!
    
    
    //Bottom label and button to call "Tap"

    
    @IBOutlet var BottomLabel: UILabel!
  
    @IBOutlet var BottomButton: UIButton!
    
    //Numbers to count score
    
    @IBOutlet var BlueLabel: UILabel!


    @IBOutlet var RedLabel: UILabel!
    
   
    
    
    //Labels to call "winner" or "loser" at the end
    
    @IBOutlet var EndScene: UIButton!
    
    @IBOutlet var BlueEndLabel: UILabel!
    
    @IBOutlet var RedEndLabel: UILabel!
    
    
    // call social media
    

    @IBAction func Share(sender: AnyObject) {
    }
    
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Set the label = to score
        
        score = 0
        
        BlueLabel.text = "\(score)"
        RedLabel.text = "\(score)"
        
        
        //Set TopLabel = to message want to appear
        
        TopLabel.text = "TAP!!"
        
        //Transform top labels to appear upside down
        
        TopLabel.transform = CGAffineTransformMakeRotation(185.35)
        
        
        BottomLabel.text = "TAP!!"
        
        //Transform top labels to appear upside down
        
        BlueLabel.transform = CGAffineTransformMakeRotation(185.35)
        
        //Set "winner" and "loser" labels to hidden = true until score of 10 is reached and set "tap" to visible while game is being played
        
        EndScene.hidden = true
        BlueEndLabel.hidden = true
        RedEndLabel.hidden = true
        TopLabel.hidden = false
        BottomLabel.hidden = false
        BlueLabel.hidden = false
        RedLabel.hidden = false
       BottomButton.hidden = false
      
        
        BlueEndLabel.transform = CGAffineTransformMakeRotation(185.35)
    }
    
    @IBAction func Share() {
        var shareFacebook : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        self.presentViewController(shareFacebook, animated: true, completion: nil)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
        
    
    }
    
    
    @IBAction func BlueButtonAction(sender: AnyObject) {
        
        //add 1 to score when present side is tapped
        
        score++
        BlueLabel.text = "\(score)"
        RedLabel.text = "\(score)"
        
        newScore()
    }
    
    
    @IBAction func RedButtonAction(sender: AnyObject) {
        
        //subtract 1 from score when opposite side is tapped
        
        
        score--
        BlueLabel.text = "\(score)"
        RedLabel.text = "\(score)"
        
        newScore()
        
    }
    
    func newScore(){
        if score >= 10{
            
            
            //Set "winner" and "loser" labels to hidden = true until score of 10 is reached and set "tap" to visible while game is being played
            
            
            EndScene.hidden = false
            BlueEndLabel.hidden = false
            RedEndLabel.hidden = false
            TopLabel.hidden = true
            BottomLabel.hidden = true
            BottomButton.hidden = true
            RedLabel.hidden = true
            BlueLabel.hidden = true
          
            
            BlueEndLabel.text = "Winner"
            
            RedEndLabel.text = "Loser"
            
        } else if score <= -10{
            
            
            //Set "winner" and "loser" labels to hidden = true until score of 10 is reached and set "tap" to visible while game is being played
            
            
            EndScene.hidden = false
            BlueEndLabel.hidden = false
            RedEndLabel.hidden = false
            TopLabel.hidden = true
            BottomLabel.hidden = true
            BottomButton.hidden = true
            RedLabel.hidden = true
            BlueLabel.hidden = true
            BlueEndLabel.text = "Loser"
           
            
            RedEndLabel.text = "Winner"
            
        }
    }
    
    
    @IBAction func EndScene(sender: AnyObject) {
        
        
        //Set "winner" and "loser" labels to hidden = true until score of 10 is reached and set "tap" to visible while game is being played
        
        
        TopLabel.hidden = false
        BottomLabel.hidden = false
        EndScene.hidden = true
        BlueEndLabel.hidden = true
        RedEndLabel.hidden = true
        RedLabel.hidden = false
        BlueLabel.hidden = false
        BottomButton.hidden = false
       
        
        score = 0
        
        BlueLabel.text = "\(score)"
        RedLabel.text = "\(score)"
    }

    
}