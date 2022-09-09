//
//  HeaderModel.swift
//  Avocados
//
//  Created by Yuzu on 9/9/22.
//

import SwiftUI

// MARK: - HEADER MODEL
struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
