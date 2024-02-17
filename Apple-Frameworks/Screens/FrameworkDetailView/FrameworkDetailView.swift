//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Андрій Макаревич on 17.02.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
