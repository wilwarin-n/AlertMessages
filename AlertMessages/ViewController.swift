//
//  ViewController.swift
//  AlertMessages
//
//  Created by Aydın Kutlu on 11.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var password2TextFields: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func signupClicked(_ sender: Any) {
        
        if emailTextfield.text == ""{
            //required email
            alertMessages(_title: "Uyarı!", msg: "Email required")
            
        } else if passwordTextfield.text == ""{
            //reqired password
            alertMessages(_title: "Uyarı!", msg: "Password required")
            
        } else if password2TextFields.text != passwordTextfield.text {
            //passwords do not match
            alertMessages(_title: "Uyarı!", msg: "Do not match passwords..")
        } else {
            alertMessages(_title: "Congrats!", msg: "Registration created successfully!")
        }
        
        
    }
    
    func alertMessages(_title: String, msg: String) {
        let alertMessage = UIAlertController(title: _title, message: msg, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("Clicked OK button.")
        }
        
        alertMessage.addAction(okButton)
        
        self.present(alertMessage, animated: true, completion: nil)
    }
    
}

