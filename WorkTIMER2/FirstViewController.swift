//
//  FirstViewController.swift
//  WorkTIMER2
//
//  Created by Robert Janoska on 16.08.17.
//  Copyright © 2017 Robert Janoska. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //define some variables
    var buttonStartClicked:Int = 0;
    var dateStart:NSDate? = nil
    var lengthToday:String="";
    
    
    @IBOutlet weak var countToday: UILabel!
    @IBOutlet weak var countBreak: UILabel!
    @IBOutlet weak var countThisWeek: UILabel!
    @IBOutlet weak var countLastWeek: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        countToday.text="";
        countBreak.text="";
        countThisWeek.text="";
        countLastWeek.text="";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // click on button start
    @IBAction func getStartTime(sender: UIButton) {
        
        if buttonStartClicked < 1 {
            //set var for click
            buttonStartClicked = 1;
        
            countToday.text="";
            
            dateStart  = NSDate()
        
            
        
        }
    }
    
    
    //click on button stop
    @IBAction func getStopTime(sender: UIButton) {
        
        //do only if start button was clicked
        if buttonStartClicked > 0 {
            
            let dateStop = NSDate();
            
            buttonStartClicked = 0;
            
            let interval = dateStop.timeIntervalSince(dateStart! as Date);
            print (interval)
            
            lengthToday = stringFromTimeInterval(interval: interval);
            
            
            countToday.text = lengthToday;
            
        }
    }
    
    
    
    
    
    func stringFromTimeInterval(interval: TimeInterval) -> String {
        let interval = Int(interval)
        let minutes = (interval / 60) % 60
        let hours = (interval / 3600)
        return String(format: " %02dh %02dmin", hours, minutes)
    }
    
    
    
    func ourCustomMethod() {
        
        // our custom code here
        
    }

}

