//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Balázs Képli on 03/09/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack {
                
                Spacer()
                
                Button(action: {
                    isShowingDetailView = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                })
            }
            .padding(.horizontal)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                AFButton(title: "Learn More")
            })
        }
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
