//
//  LoginViewModel.swift
//  SwiftUIBasicSample_LoginScreen
//
//  Created by Ashwani Sharma on 24/03/24.
//

import Foundation
import SwiftUI

// View model to handle the business logic
class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isLoggedIn: Bool = false // State variable to track login status

    func login() {
        // Perform login action here
        print("Login button tapped")
        print("Username: \(username)")
        print("Password: \(password)")
        isLoggedIn = true

        
    }
}
