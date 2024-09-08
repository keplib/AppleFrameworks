//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Balázs Képli on 29/08/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!, viewModel: viewModel)
            }
        }
    }
    
    
}

//isShowingDetailView: $viewModel.isShowingDetailView,

#Preview {
    FrameworkGridView()
}


