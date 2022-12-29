//
//  NetworkingSingletonService.swift
//  NetworkingServiceForUnitTesting
//
//  Created by Michelle Grover on 12/28/22.
//

import Foundation


final class NetworkingSingletonService {
    static let shared = NetworkingSingletonService()
    
    public func fetchAPIResponse(url:URL, completion:@escaping(Result<Data,ResponseError>) -> ()) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            guard let response = response as? HTTPURLResponse, (200...300) ~= response.statusCode else {
                completion(.failure(.badStatusCode))
                return
            }
            guard error == nil else {
                completion(.failure(.badResponse))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
}
