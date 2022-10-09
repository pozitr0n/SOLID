import UIKit
import PlaygroundSupport
import Foundation

class UserRegistration {
    
    let name: String
    let phone: String
    let email: String
    
    init(name: String, phone: String, email: String) {
        self.name = name
        self.phone = phone
        self.email = email
    }
    
    let validator = Validator()
    let saveData = SaveData()
    let network = Network()
    
    func registerUser() {
        if validator.validateUserFields(name: name, phone: phone, email: email) {
            saveData.saveUserData()
            network.sendUserDataToServer()
        }
    }
    
}

class Validator {
    
    func validateUserFields(name: String, phone: String, email: String) -> Bool {
    
        if !name.isEmpty && !phone.isEmpty && !email.isEmpty {
            return true
        }
        
        return false
        
    }
    
}

class SaveData {
    
    func saveUserData() {
        
    }
    
}

class Network {
    
    func sendUserDataToServer() {
        
    }
    
}

