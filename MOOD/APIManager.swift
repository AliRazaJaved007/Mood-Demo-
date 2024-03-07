//
//  APIManager.swift
//  MOOD
//
//  Created by Zain on 2024-03-06.
//

import Foundation

class NetworkManager{
    static func callingAPI(completion: @escaping(DiscoverModel?, Error?) -> Void){
        guard let url = URL(string: Discover_url) else {
            completion(nil, NSError(domain: "InvalidURL", code: 0, userInfo: nil))
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            guard let data = data else {
                completion(nil, NSError(domain: "NoData", code: 0, userInfo: nil))
                return
            }
//            var stringData = String(data: data, encoding: .utf8)
//            print(stringData)
            do {
                let decoder = JSONDecoder()
                let discoverResponse = try decoder.decode(DiscoverModel.self, from: data)
//                let firstDiscoverId = discoverResponse.discoverFeeds.data.first?.id
//                let firstDiscoverTitle = discoverResponse.discoverFeeds.data.first?.activity_title
//                let firstDiscoverAddress = discoverResponse.discoverFeeds.data.first?.activity_address
//                print("First Discover ID: \(firstDiscoverId)")
//                print("First Discover ID: \(firstDiscoverTitle)")
//                print("First Discover ID: \(firstDiscoverAddress)")
                
                completion(discoverResponse, nil)
            } catch {
                completion(nil, error)
            }
        }.resume()
    }
}
