//
//  RecipeRequest.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/02/28.
//

import Foundation

public struct FoodRequest {
    public var foodQuery: String

    public let defaultSession = URLSession(configuration: .default)

    public var dataTask: URLSessionDataTask?

    public func getSearchResult(completionHandler: @escaping([FoodDetails]) -> Void) {
       dataTask?.cancel()

        let resourceString = "http://www.recipepuppy.com/api/?"
        let resourceQuery = "i=\(foodQuery)"

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
}
