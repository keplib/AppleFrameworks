//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Balázs Képli on 6/9/24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 280, height: 50)
            .background(.red)
            .cornerRadius(10.0)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
