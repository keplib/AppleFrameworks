//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Balázs Képli on 03/09/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    //@Binding var isShowingDetailView: Bool
    @ObservedObject var viewModel: FrameworkGridViewModel
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {            
            
            XDismissButton(viewModel: viewModel)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                AFButton(title: "Learn More")
            })
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, viewModel: FrameworkGridViewModel())
}

//isShowingDetailView: .constant(false)
