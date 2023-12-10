//
//  DataService.swift
//  Coderswag
//
//  Created by Soubhik Sarkhel on 10/12/23.
//

import Foundation

class DataService {
    static let shared = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts"),
        Category(title: "HOODIES", imageName: "hoodies"),
        Category(title: "HATS", imageName: "hats"),
        Category(title: "DIGITAL", imageName: "digital"),
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
