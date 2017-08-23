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
    //var dateStart:Date?=nil;
    //var dateStop:Date?=nil;
    //var interval:Date?=nil;
    var dateStart:NSDate? = nil
    
    @IBOutlet weak var countToday: UILabel!
    @IBOutlet weak var countBreak: UILabel!
    @IBOutlet weak var countThisWeek: UILabel!
    @IBOutlet weak var countLastWeek: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        
            dateStart  = NSDate()
            print (dateStart!)
        
            countToday.text = " bla bla"
        
        } else {
            print ("dont click start more than once")
        }
    }
    
    
    //click on button stop
    @IBAction func getStopTime(sender: UIButton) {
        
        //do only if start button was clicked
        if buttonStartClicked > 0 {
            print ("button stop")
            
            let dateStop = NSDate();
            print (dateStop)
            
            buttonStartClicked = 0;
            
            let interval = dateStop.timeIntervalSince(dateStart! as Date);
            print (interval)
            
        } else {
            print ("dont click stop before start")
        }
    }
    
    
    
    
    func ourCustomMethod() {
        
        // our custom code here
        
    }

}

