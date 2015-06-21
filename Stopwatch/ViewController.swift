//
//  ViewController.swift
//  Stopwatch
//
//  Created by Nicholas Bair on 6/21/15.
//  Copyright (c) 2015 Nicholas Bair. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var count = 0
    
    func updateTime() {
        
        count++
        
        lblCounter.text = "\(count)"
        
    }

    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBOutlet weak var lblCounter: UILabel!
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        
        count = 0
        
        lblCounter.text = "0"
        
    }
    
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

