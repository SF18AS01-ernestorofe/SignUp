//
//  ViewController.swift
//  SignUp
//
//  Created by Ernesto Rodrigues on 1/12/19.
//  Copyright © 2019 Ernesto Rodrigues. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var reEnterEmailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var reEnterPasswordField: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var printoutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func signupButtonPressed(_ sender: UIButton) {
      
        
        
        let firstName: String = (firstNameField.text!)
        let lastName:  String = (lastNameField.text!)
        let email:     String = (emailField.text!)
        let reEnterEmail: String = (reEnterEmailField.text!)
        let password:  String = (passwordField.text!)
        let reEnterPassword: String = (reEnterPasswordField.text!)

        var str: [String] = [
            "1","2","3","4","5","6","7","8","9","0",
            "~","!","@","#","$","%","^","&","*","(",")"
        ]
        let casa: String = password
        
        func passwordRequirement() -> Bool {
            
            for counter in 1...str.count{
                print("me")
                if casa.contains(str[counter - 1]) {
                    
                 return true
                    
                }
                
            }
          return false
        }
       
        if firstName.isEmpty {
            printoutLabel.text = "First name field can not be empty"
        }
        else if lastName.isEmpty {
            printoutLabel.text = "Last name field can not be empty"
        }
        else if (email.isEmpty || email.count < 7 ) {
            printoutLabel.text = "Invalid e-mail "
        }
        else if (reEnterEmail.isEmpty || reEnterEmail.lowercased() != email.lowercased()) {
            printoutLabel.text = "Email didn't match"
        }
        else if (password.isEmpty || password.count < 3  || passwordRequirement() != true ) {
            printoutLabel.text = "Password does not meet all requirement"
        }
        
        else if (reEnterPassword.isEmpty || reEnterPassword != password) {
            printoutLabel.text = "Password didn't match"
        }
        
        else {
            printoutLabel.text = ("Sign Up Succesfully")
            
        }
        
        
        
    }
    
    
    

}

