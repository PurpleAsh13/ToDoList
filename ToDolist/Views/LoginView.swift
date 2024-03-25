//
//  LoginView.swift
//  ToDolist
//
//  Created by Sharma, Shubham on 25/03/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                VStack {
                    HeaderView(title: "To do list", subTitle: "Get some work done!", angle: 15.0, background: .blue)
                    // Login Form
                    VStack {
                        TextField("Email Address", text: $viewModel.email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                            .autocorrectionDisabled()
                            .ignoresSafeArea(.container)
                        SecureField("Password", text: $viewModel.password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        
                        TLButton(text: "Login") {
                            // Login
                            viewModel.login()
                        }
                    }
                    .offset(y: -50)
                    .padding(.horizontal, 20)
                    .ignoresSafeArea(.keyboard, edges: .bottom)
                    
                    // Create Account
                    VStack {
                        Text("New around here?")
                        NavigationLink("Create an account", destination: RegisterView())
                    }
                    .padding(.bottom, 50)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
