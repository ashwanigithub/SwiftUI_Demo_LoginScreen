//
//  WelcomeView.swift
//  SwiftUIBasicSample_LoginScreen
//
//  Created by Ashwani Sharma on 24/03/24.
//

import SwiftUI

struct WelcomeView: View {
    @StateObject private var alertViewModel = AlertViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello World B")
                    .alert(isPresented: $alertViewModel.showAlertMsg) {
                        Alert(title: Text("Alert Title"),
                              message: Text("Login Success"),
                              primaryButton: .default(Text("OK"), action: {
                            print("OK tapped")
                        }),
                              secondaryButton: .cancel(Text("Cancel")))
                    }
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarHidden(false) // Hide navigation bar on login screen
//            .navigationDestination(isPresented: $viewModel.isLoggedIn) {
//                NextView()
//            }
        }
    }
}

#Preview {
    WelcomeView()
}
