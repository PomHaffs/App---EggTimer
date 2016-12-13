//
//  ViewController.swift
//  EggTimer
//
//  Created by Tomas-William Haffenden on 13/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //this is now global
    var timer = Timer()
    
    var currentNumberofSeconds = 210
    
    @IBOutlet weak var timerNumber: UILabel!
    
    @IBAction func pauseButtonPressed(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playButtonPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countdownTimer), userInfo: nil, repeats: true)
    }
        
    @IBAction func minusTenPressed(_ sender: Any) {
        
        if currentNumberofSeconds > 10 {
           
            currentNumberofSeconds -= 10
            timerNumber.text = String(currentNumberofSeconds)
        }
        
    }
    
    @IBAction func plusTenPressed(_ sender: Any) {
        currentNumberofSeconds += 10
        timerNumber.text = String(currentNumberofSeconds)
    }
    
    @IBAction func refreshPressed(_ sender: Any) {
        currentNumberofSeconds = 210
        timerNumber.text = String(currentNumberofSeconds)
    }
    
    
    func countdownTimer() {
        
        if currentNumberofSeconds > 0 {
            currentNumberofSeconds -= 1
            timerNumber.text = String(currentNumberofSeconds)
        } else {
            timer.invalidate()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

