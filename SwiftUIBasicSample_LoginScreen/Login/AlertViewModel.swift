//
//  AlertViewModel.swift
//  SwiftUIBasicSample_LoginScreen
//
//  Created by Ashwani Sharma on 24/03/24.
//

import Foundation
class AlertViewModel: ObservableObject {
    @Published var showAlertMsg: Bool = true
    
    func showAlert() {
        showAlertMsg = true
    }
    
    func hideAlert() {
        showAlertMsg = false
    }
}
