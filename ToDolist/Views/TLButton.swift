//
//  TLButton.swift
//  ToDolist
//
//  Created by Sharma, Shubham on 25/03/24.
//

import SwiftUI

struct TLButton: View {
    let text: String
    let action: () -> Void
    var body: some View {
        Button {
            // Login
        } label: {
            Text(text)
                .bold()
                .foregroundColor(.white)
                .padding(.horizontal, 80)
        }
        .buttonStyle(.borderedProminent)
        .padding()
    }
}

#Preview {
    TLButton(text: "login") {
        // Action
    }
}
