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
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$20", imageName: "hat01"),
        Product(title: "Devslopes Logo Hat Black", price: "$15", imageName: "hat02"),
        Product(title: "Devslopes Logo Hat White", price: "$35", imageName: "hat03"),
        Product(title: "Devslopes Logo Snapback", price: "$25", imageName: "hat04"),
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$56", imageName: "hoodie01"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$99", imageName: "hoodie02"),
        Product(title: "Devslopes Hoodie Grey", price: "$49", imageName: "hoodie03"),
        Product(title: "Devslopes Hoodie Black", price: "$39", imageName: "hoodie04"),
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Shirt Black", price: "$200", imageName: "shirt01"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$150", imageName: "shirt02"),
        Product(title: "Devslopes Logo Shirt Red", price: "$350", imageName: "shirt03"),
        Product(title: "Hustle Delegate Grey", price: "$250", imageName: "shirt04"),
        Product(title: "Kickflick Studios Black", price: "$250", imageName: "shirt05"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(categoryTitle: String) -> [Product] {
        switch categoryTitle {
        case "SHIRTS":
            return shirts
        case "HOODIES":
            return hoodies
        case "HATS":
            return hats
        default:
            return digitalGoods
        }
    }
}
