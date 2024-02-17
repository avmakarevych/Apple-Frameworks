//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Андрій Макаревич on 17.02.2024.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    
    let url: URL
    
    func makeUIViewController(context: 
        UIViewControllerRepresentableContext<SafariView>) ->
        SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}


