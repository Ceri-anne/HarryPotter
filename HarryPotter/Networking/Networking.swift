//
//  Created by Ceri-anne Jackson on 23/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import Foundation

class Networking {

    func fetchHouse(completionHandler: @escaping (House) -> Void) {
            
        guard let url = URL(string: API.house.url) else {
            let error = NetworkingError.invalidURL
            print("🧐 error", error)
            return
        }
        
        fetchData(with: url) { data in
            
            guard let string = String(data: data, encoding: .utf8) else {
                print("🧐 Error with data returned from API, expected String")
                return
            }
            
            guard let house = House.init(rawValue: string.replacingOccurrences(of: "\"", with: "")) else {
                print("🧐 Cannot convert to House", string)
                return
            }
            
            completionHandler(house)

        }
        
    }
    
    func fetchCharacters(completionHandler: @escaping ([Character]) -> Void) {
            
        guard let url = URL(string: API.characters.url) else {
            let error = NetworkingError.invalidURL
            print("🧐 error", error)
            return
        }
        
        fetchData(with: url) { data in
            guard let characters = try? JSONDecoder().decode([Character].self, from: data) else {
                print("🧐 Cannot convert to Characters", data)
                return
            }

            completionHandler(characters)
        }
        
    }
    
    func fetchSpells(completionHandler: @escaping ([Spell]) -> Void) {
            
        guard let url = URL(string: API.spells.url) else {
            let error = NetworkingError.invalidURL
            print("🧐 error", error)
            return
        }
        
        print(url)
        
        fetchData(with: url) { data in
            
            guard let spells = try? JSONDecoder().decode([Spell].self, from: data) else {
                print("🧐 Cannot convert to Spells", data)
                return
            }

            
            completionHandler(spells)

        }
        
    }
    
    
    private func fetchData(with url: URL, completionHandler: @escaping (Data) -> Void) {
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
           
           if let error = error {
               print("🧐 Error accessing API", error)
               return
           }
           
           guard let httpResponse = response as? HTTPURLResponse,
                     (200...299).contains(httpResponse.statusCode) else {
                       print("🧐 Error with the response, unexpected status code: ", response!)
             return
           }
               
           guard let data = data else {
               print("🧐 Error with data returned from API, invalid data")
               return
           }
         
           completionHandler(data)
           
        })
        
        task.resume()
    }
    
}
