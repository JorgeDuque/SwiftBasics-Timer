//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jorge Duque on 12/6/16.
//  Copyright © 2016 Jorgeduque. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Create timer & initial value
    var timer = Timer()
    var time = 210
    
    func decreaseTimer(){
        if time > 0{
            time -= 1
            timerLabel.text = String(time)
        } else{
            timer.invalidate()
        }
    }
    
    @IBOutlet var timerLabel: UILabel!
    
    //Start decreasing timer
    @IBAction func buttonPlay(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func buttonPause(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func buttonPlusTen(_ sender: AnyObject) {
        time += 10
        timerLabel.text = String(time)
    }
    
    @IBAction func buttonMinusTen(_ sender: AnyObject) {
        if time > 10{
        time -= 10
        timerLabel.text = String(time)
        }
    }
    
    @IBAction func buttonReset(_ sender: AnyObject) {
        time = 210
        timerLabel.text = String(time)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

