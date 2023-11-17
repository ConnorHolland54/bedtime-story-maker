//
//  NewBookRepository.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 11/17/23.
//

import Foundation
import Alamofire

class NewBookRepository {
    func getNewBookData(completion: @escaping (Result<BookModel, Error>) -> Void) {
        AF.request("http://localhost:3000/runOpenAiTest").response { response in
            guard let data = response.data else { return }
            do {
                let model = try JSONDecoder().decode(BookModel.self, from: data)
                print(model)
                completion(.success(model))
            }
            catch {
                print("Error")
            }
        }
        
    }
}
