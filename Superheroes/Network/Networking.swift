//
//  Networking.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import Foundation
class Networking {
    func request( completion: @escaping (Data?, Error?)->Void){

        let urlString = "https://api.myjson.com/bins/bvyob"
        print("URL:\(urlString)")
        let urlSession = URLSession(configuration: .default)
        let url = URL(string: urlString)
         var urlRequest = URLRequest(url: url!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
        urlRequest.httpMethod = "GET"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let dataTask = urlSession.dataTask(with: urlRequest) { data, response, error in
                   DispatchQueue.main.async{
                    guard let httpResponse = response as? HTTPURLResponse  else {
                                completion(nil,nil)
                                   return
                               }
                      guard error == nil else {
                                   completion(nil,error)
                                    return
                                }
                    print("ResponseCode:\(httpResponse.statusCode)")
                    if 200 != httpResponse.statusCode {
                        completion(nil,error)
                        return
                    }
                     completion(data, nil)
                   }
               }
               dataTask.resume()
    }
}
