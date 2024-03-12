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
        
        let alertMessage = UIAlertController(title: "Hata Mesajı!", message: "Email Hatalı Girdiniz", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { <#UIAlertAction#> in
            print("Clicked OK button")
        }
        
        alertMessage.addAction(okButton)
        
        self.present(alertMessage, animated: true, completion: nil)
    }
    
}

