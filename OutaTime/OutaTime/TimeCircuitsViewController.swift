//
//  TimeCircuitsViewController.swift
//  OutaTime
//
//  Created by Joshua Franklin on 8/21/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: ViewController {
    
    @IBOutlet weak var destinationTime: UILabel!
    @IBOutlet weak var presentTime: UILabel!
    @IBOutlet weak var departTime: UILabel!
    @IBOutlet weak var speedMPH: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func travelButtonTapped(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
