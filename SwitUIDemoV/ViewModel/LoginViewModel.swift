//
//  LoginViewModel.swift
//  SwitUIDemoV
//
//  Created by VishalKothari on 22/08/22.
//

import Foundation
import Combine

class LoginViewModel:ObservableObject{
    
    @Published var emailAddress:String = ""
    @Published var password:String = ""
    
    func isValidEmail()-> Bool {
        Helper.isValidEmail(email: emailAddress)
    }
    
}
