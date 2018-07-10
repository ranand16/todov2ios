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
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    var parameters: Parameters = [:]
    var json = JSON()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginPressed(_ sender: Any) {
        parameters = ["username": usernameTF.text, "password": passwordTF.text]
        Alamofire.request("http://localhost:3000/api/login", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
            
            self.json = JSON(response.result.value!)
            print(self.json)
            if(self.json["code"].exists()){
                print("wrong!!")
            }else{
                self.performSegue(withIdentifier: "toDashboard", sender: self)
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toDashboard"){
            let destination = segue.destination as! DashboardVC
            destination.userJson = json
        }
    }
}
