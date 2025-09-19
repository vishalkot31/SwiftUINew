

import Foundation
import UIKit
import AVKit


var isSocketConnected = false
var isSocketReconnected = false

class Helper {
    
   
    /// Email validation
    ///
    /// - Parameter email: The email to be check
    /// - Returns: return true if email format is correct otherwise false
    
    static func isValidEmail(email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        var valid = NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
        if valid {
            valid = !email.contains("Invalid email id")
        }
        return valid
    }
    
    static func isValidName(testStr:String) -> Bool {
        let emailRegEx = "^[A-Za-z ]{1,100}$"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    //Password Vaildation
    
    /// This function Checks password vaildation
    ///
    /// - Parameter testStr: Password String
    /// - Returns: return true if password format is correct otherwise false
    
    static func isValidPassword(testStr:String?) -> Bool {
        guard testStr != nil else { return false }
        
        // at least one uppercase,
        // at least one digit
        // at least one lowercase
        // 8 characters total
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[a-z])(?=.*?[#?!@$%^&<>*~:`-]).{6,}")
        return passwordTest.evaluate(with: testStr)
    }
   
}






