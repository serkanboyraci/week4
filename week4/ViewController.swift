//
//  ViewController.swift
//  week4
//
//  Created by Ali serkan Boyracı  on 29.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contentTitleLabel: UILabel!
    @IBOutlet weak var tcNoTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        tcNoTextField.delegate = self
    }

    @IBAction func nextButtonClicked(_ sender: Any) {
        
        let tcNo = tcNoTextField.text!
        contentTitleLabel.text = tcNo
    }
    
    extension ViewController: UITextFieldDelegate {
        
    }
    
}

