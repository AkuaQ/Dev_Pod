//
//  RecipeRequest.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/03/22.
//

import Foundation

public struct FoodRequest {
    public var foodQuery: String
    public var typeQuery: String
    
    public let defaultSession = URLSession(configuration: .default)
    
    public var dataTask: URLSessionDataTask?
    
    public func getSearchResult(completionHandler: @escaping([FoodDetails]) -> Void) {
        dataTask?.cancel()
        
        let resourceString = "http://www.recipepuppy.com/api/?"
        let countSpaces = foodQuery.replacingOccurrences(of: " ", with: "+")
        let resourceQuery = "\(typeQuery)=\(countSpaces)"
        
        guard let resourceURL = URL(string: resourceString + resourceQuery) else {fatalError()}
        let dataTask = URLSession.shared.dataTask(with: resourceURL) {data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data,
                let response = response as? HTTPURLResponse,
                response.statusCode == 200 {
                print(data)

                do {
                    let foodList = try JSONDecoder().decode(FoodResults.self, from: data)

                    completionHandler(foodList.resultCount)
                } catch let error {
                    print(error)
                }
            }
        }
        dataTask.resume()
    }

    public init(foodQuery: String, typeQuery: String) {
        self.foodQuery = foodQuery
        self.typeQuery = typeQuery
    }
}
