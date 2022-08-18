//
//  Shop.swift
//  Touchdown
//
//  Created by Yuzu on 8/18/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
