//
//  PageModel.swift
//  Pinch
//
//  Created by Yuzu on 7/22/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
