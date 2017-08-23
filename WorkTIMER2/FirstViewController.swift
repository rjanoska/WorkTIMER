//
//  FirstViewController.swift
//  WorkTIMER2
//
//  Created by Robert Janoska on 16.08.17.
//  Copyright © 2017 Robert Janoska. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //var to check if start button was clicked
    var buttonStartClicked:Int = 0;
    
    var time = 0.0
    var timer = Timer()
    
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


        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: (ourCustomMethod(sender:)), userInfo: nil, repeats: true)
        
        
        //set var for click
        buttonStartClicked = 1;
        
        
        countToday.text = " bla bla"
        
        
    }
    
    
    //click on button stop
    @IBAction func getStopTime(sender: UIButton) {
        
        //do only if start button was clicked
        if buttonStartClicked > 0 {
            print ("button stop")
            
            print(timer);
            
            
            buttonStartClicked = 0;
        } else {
            print ("dont click stop before start")
        }
    }
    
    
    
    
    func ourCustomMethod() {
        
        // our custom code here
        
    }

}

