//
//  Category.swift
//  Coderswag
//
//  Created by Soubhik Sarkhel on 10/12/23.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
