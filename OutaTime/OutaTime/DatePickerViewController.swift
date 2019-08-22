//
//  DatePickerViewController.swift
//  OutaTime
//
//  Created by Joshua Franklin on 8/21/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

protocol DatePickerDelegate {
    
    func destinationDateWasChosen(_ Date: DatePickerDelegate)
}

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    var delegate:DatePickerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func setDestinationTapped(_ sender: Any) {
        
        DatePickerDelegate.self
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func travelBackTapped(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
}

