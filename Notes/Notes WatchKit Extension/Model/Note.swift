//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Yuzu on 8/31/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
