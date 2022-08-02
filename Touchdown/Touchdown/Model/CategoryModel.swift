//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Yuzu on 8/2/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
