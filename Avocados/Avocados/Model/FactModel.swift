//
//  FactModel.swift
//  Avocados
//
//  Created by Yuzu on 9/12/22.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
