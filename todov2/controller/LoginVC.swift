//
//  LoginVC.swift
//  todov2
//
//  Created by Rishabh Anand on 03/06/18.
//  Copyright © 2018 Rishabh Anand. All rights reserved.
//
import UIKit
import Alamofire
import SwiftyJSON

class LoginVC: UIViewController {

    var parameters: Parameters = ["username":"ranand", "password":"ris"] ;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginPressed(_ sender: Any) {
        Alamofire.request("http://localhost:3000/api/login", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
            print(response.result.value!)
            print(response.result.value as! loginResponseStruct)
            
        }
    }
}
