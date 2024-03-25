//
//  RegisterView.swift
//  ToDolist
//
//  Created by Sharma, Shubham on 25/03/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subTitle: "Organize your day!", angle: -15, background: .orange)
            VStack {
                TextField("Full Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TLButton(text: "Register") {
                    //register
                }
                .tint(.orange)
            }
            .offset(y: -50)
            .padding(.horizontal, 20)
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
