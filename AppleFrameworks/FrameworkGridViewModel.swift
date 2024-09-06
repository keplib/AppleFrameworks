//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Balázs Képli on 6/9/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false
    
    
}
