//
//  CenterModifier.swift
//  Africa
//
//  Created by Yuzu on 8/1/22.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
