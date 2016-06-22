//
//  ViewController.swift
//  9_Stopwatch
//
//  Created by Tomomi Tamura on 6/16/16.
//  Copyright © 2016 Tomomi Tamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = NSTimer()
    
    var time = 0
    
    @IBOutlet var timeLabel: UILabel!
    
    func increasedTimer() {
        time += 1
        timeLabel.text = String(time)
        // or timeLabel.text = "\(time)"
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increasedTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timeLabel.text = "0"
        
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

