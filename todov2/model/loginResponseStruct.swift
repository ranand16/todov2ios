//
//  loginResponseStruct.swift
//  todov2
//
//  Created by Rishabh Anand on 03/06/18.
//  Copyright © 2018 Rishabh Anand. All rights reserved.
//

import Foundation

struct loginResponseStruct {
    private var _success = Bool();
    private var _message = String();
    private var _token = String();
    
    var success: Bool{
        get{
            return _success
        }
        set{
            _success = newValue
        }
    }
    var message: String{
        get{
            return _message
        }
        set{
            _message = newValue
        }
    }
    var token: String{
        get{
            return _token
        }
        set{
            _token = newValue
        }
    }
    
}
