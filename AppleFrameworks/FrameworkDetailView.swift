//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Balázs Képli on 03/09/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 40, height: 40)
            Text(framework.name)
            Text(framework.description)
        }
        .padding(.horizontal)
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[0])
}
