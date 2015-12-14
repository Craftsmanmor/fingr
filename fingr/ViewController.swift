//
//  ViewController.swift
//  fingr
//
//  Created by UVA  on 2015/12/12.
//  Copyright © 2015 UVA . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bluebtn: UIButton!
    @IBOutlet weak var redbtn: UIButton!
    
    @IBOutlet weak var blue: UILabel!
    @IBOutlet weak var red: UILabel!
    
    @IBOutlet weak var endscene: UIButton!
    
    
    @IBOutlet weak var endblue: UILabel!
    @IBOutlet weak var endred: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score = 0
        blue.text = "\(score)"
        red.text = "\(score)"
        
        // rotate the labels for player blue
        blue.transform = CGAffineTransformMakeRotation(3.14)
        endblue.transform = CGAffineTransformMakeRotation(3.14)
        
        endscene.hidden = true
        endred.hidden = true
        endblue.hidden = true
    }
    
    func scores(){
    
        if score >= 10{
            
            endscene.hidden = false
            endred.hidden = false
            endblue.hidden = false
            
            endblue.text = "loser"
            endred.text = "winner"
            
            endscene.backgroundColor = UIColor.redColor()
            
            
        }else if score <= -10{
            
            endscene.hidden = false
            endred.hidden = false
            endblue.hidden = false
            
            endblue.text = "winner"
            endred.text = "loser"
            
            endscene.backgroundColor = UIColor.blueColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func redaction(sender: UIButton) {
        
        score++
        blue.text = "\(score)"
        red.text = "\(score)"
        
        scores()
    }
    
    @IBAction func blue(sender: UIButton) {
        
        score--
        blue.text = "\(score)"
        red.text = "\(score)"
        
        scores()
    }
    
    @IBAction func endsceneaction(sender: UIButton) {
        
        endscene.hidden = true
        endred.hidden = true
        endblue.hidden = true
        
        score = 0
        blue.text = "\(score)"
        red.text = "\(score)"
    }

}

