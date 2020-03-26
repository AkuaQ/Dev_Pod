//
//  Recipe.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/03/22.
//

import Foundation

public struct FoodResults: Decodable {
    public var resultCount: [FoodDetails]

    public enum CodingKeys: String, CodingKey {
        case resultCount = "results"
    }
}

public struct FoodResponse: Decodable {
    public var foods: FoodResults
}

public struct FoodDetails: Decodable {
    public var title: String
    public var ingredients: String
    public var href: String
    public var thumbnail: String
    public init() {
        title = ""
        ingredients = ""
        href = ""
        thumbnail = ""
    }
}
