//
//  ContentView.swift
//  SwiftUIBasicSample_LoginScreen
//
//  Created by Ashwani Sharma on 24/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = LoginViewModel()
    @StateObject private var alertViewModel = AlertViewModel()
    @State private var isLoginEnabled: Bool = false // State variable to track login button's enabled state
    @State private var isLoggedin: Bool = false // State variable to track login status

    var body: some View {
        NavigationStack {
            
            VStack {
                Spacer()
                
                Text("Login Screen")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 50)
                
                TextField("Username", text: $viewModel.username)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .onChange(of: viewModel.username) { _ in
                        updateLoginButtonState() // Update login button state when username changes
                    }
                SecureField("Password", text: $viewModel.password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .onChange(of: viewModel.password) { _ in
                        updateLoginButtonState() // Update login button state when username changes
                    }
          
                   Button(action: { viewModel.login() }) {
                       Text("Login")
                           .padding()
                           .frame(maxWidth: .infinity)
                           .background(Color.yellow)
                           .cornerRadius(10)
                           .padding(.horizontal)
                   } .disabled(!isLoginEnabled) // Disable login button when username or password is empty
            
                
                HStack {
                    Text("Signup")
                        .foregroundColor(.blue)
                        .padding()
                    Spacer()
                    
                    Text("Forgot Password")
                        .foregroundColor(.blue)
                        .padding()
                }
                .padding(.top, 10)
                .padding(.horizontal)
                
                Spacer()
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarHidden(true) // Hide navigation bar on login screen
            .navigationDestination(isPresented: $viewModel.isLoggedIn) {
                WelcomeView()
            }
        }
    }
    // Function to update login button state based on text fields
    private func updateLoginButtonState() {
        isLoginEnabled = !viewModel.username.isEmpty && !viewModel.password.isEmpty
    }
}

#Preview {
    ContentView()
}
