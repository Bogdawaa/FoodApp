//
//  AuthViewController.swift
//  FoodApp
//
//  Created by Bogdan on 25.02.2021.
//  Copyright © 2021 Bogdan. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
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
