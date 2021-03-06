//
//  ViewController.swift
//  Intro10
//
//  Created by SwiftiCode on 24/7/16.
//  Copyright © 2016 SwiftiCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var myName: UITextField!
    @IBOutlet weak var myStatus: UILabel!
    @IBOutlet weak var myLastName: UILabel!

    
    // MARK: Default Template
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myName.delegate = self        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        myStatus.text = "Total = " + String(nameList.count)
        
    }
        
        
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

    // MARK: Action
    @IBAction func addName(_ sender: UIButton) {
        
        myName.resignFirstResponder()
        
        let tempName = myName.text ?? ""
        
        if !tempName.isEmpty {
            
            nameList += [tempName]
            myStatus.text = "Name Saved! " + "Total = " + String(nameList.count)
            
        } else {
            
            myStatus.text = "Cannot Save Empty Name! " + "Total = " + String(nameList.count)
        }

    }
    
    @IBAction func displayLastName(_ sender: UIButton) {
        
        myName.resignFirstResponder()
        
        if nameList.count > 0 {
            
            let displayName = nameList.last!
            myLastName.text = "The last name in the list is " + displayName
            
        } else {
            
            myLastName.text = "The last name in the list is No Name"
        }
        
    }
    

}

