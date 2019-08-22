//
//  TimeCircuitsViewController.swift
//  OutaTime
//
//  Created by Joshua Franklin on 8/21/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {

    @IBOutlet weak var destinationTime: UILabel!
    @IBOutlet weak var presentTime: UILabel!
    @IBOutlet weak var departedTime: UILabel!
    @IBOutlet weak var speedMPH: UILabel!
    
    var dateformatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM:DD:YYYY"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }
    
    @IBAction func travelBackTapped(_ sender: Any) {
        
        
        
    }
    
}

extension TimeCircuitsViewController {
    
}
