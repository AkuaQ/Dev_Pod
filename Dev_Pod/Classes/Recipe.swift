//
//  Recipe1.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/02/27.
//

import Foundation
public struct FoodResults: Decodable {
    var resultCount: [FoodDetails]

    enum CodingKeys: String, CodingKey {
        case resultCount = "results"
    }
}

public struct FoodResponse: Decodable {
    var foods: FoodResults
}

public struct FoodDetails: Decodable {
    var title: String
    var ingredients: String
    var href: String
    var thumbnail: String
}
