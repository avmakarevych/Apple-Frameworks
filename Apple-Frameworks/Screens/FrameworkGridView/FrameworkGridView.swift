//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Андрій Макаревич on 17.02.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGirdViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach (MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) {
                framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
