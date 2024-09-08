//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by Balázs Képli on 8/9/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @ObservedObject var viewModel: FrameworkGridViewModel
    
    var body: some View {
        HStack {
            
            Spacer()
            
            Button(action: {
                //isShowingDetailView = false
                viewModel.isShowingDetailView = false
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
        }
        .padding(.horizontal)
    }
}

#Preview {
    XDismissButton(viewModel: FrameworkGridViewModel())
}
