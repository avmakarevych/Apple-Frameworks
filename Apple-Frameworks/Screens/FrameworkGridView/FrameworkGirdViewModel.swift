//
//  FrameworkGirdViewModel.swift
//  Apple-Frameworks
//
//  Created by Андрій Макаревич on 17.02.2024.
//

import SwiftUI

final class FrameworkGirdViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
