//
//  ViewController.swift
//  Pets
//
//  Created by ESPRIT on 10/04/2019.
//  Copyright © 2019 ESPRIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var _username: UITextField!
    @IBOutlet weak var _password: UITextField!
    @IBOutlet weak var _login_button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func login_action(_ sender: Any) {
        //let username = _username.text
        //let password = _password.text
        /*if (username == "fedi" || password == "fedi"){*/
            performSegue(withIdentifier: "login_success", sender: self)
        //}
    }
    

    @IBAction func signup_action(_ sender: Any) {
        performSegue(withIdentifier: "signup", sender: self)
    }
    
}

