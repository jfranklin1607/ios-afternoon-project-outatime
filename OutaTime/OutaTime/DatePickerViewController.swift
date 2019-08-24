//
//  DatePickerViewController.swift
//  OutaTime
//
//  Created by Joshua Franklin on 8/21/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

protocol DatePickerDelegate {
    
    func destinationDateWasChosen(_ Date: Date)
}

class DatePickerViewController: UIViewController {

    var delegate:DatePickerDelegate?
    
    @IBOutlet weak var datePicker: UIDatePicker!
  
    @IBAction func doneTapped(_ sender: Any) {
        
        delegate?.destinationDateWasChosen(datePicker.date)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
}

