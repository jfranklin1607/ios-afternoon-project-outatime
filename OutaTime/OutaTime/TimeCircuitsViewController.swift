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
    
    var currentSpeed = 0
    
    @IBAction func setDestinationTapped(_ sender: Any) {
        
    }
    
    @IBAction func travelBackTapped(_ sender: Any) {
        
        startTimer()
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: updateSpeed(timer:))
    }
    
    func updateSpeed(timer:Timer) {
        if currentSpeed != 88 {
            currentSpeed += 1
            speedMPH.text = String(currentSpeed)
        } else if  currentSpeed == 88 {
           departedTime.text = presentTime.text
            presentTime.text = destinationTime.text
            currentSpeed = 0
            showAlert()
        }
    }
    
    private func showAlert() {
        let alert = UIAlertController(title: "Time Travel Success", message: "You new date is \(currentSpeed)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentTime.text = dateformatter.string(from: Date())
        speedMPH.text = "\(currentSpeed) MPH"
        departedTime.text = "-- --- ----"
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let VC = segue.destination as? DatePickerViewController {
            VC.delegate = self
            
        }
    }
    
}

extension TimeCircuitsViewController: DatePickerDelegate {
    func destinationDateWasChosen(_ Date: Date) {
        destinationTime.text = dateformatter.string(from: Date)
    }
}
