//
//  Created by Ceri-anne Jackson on 23/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import Foundation

enum API: String {

    case house = "sortingHat"
    case characters = "characters"
    
    var url: String {
        
        let baseURL = "https://www.potterapi.com/v1/"
      
        var URLPath = baseURL + self.rawValue
        
        
        if apiKeyRequired {
            URLPath += "?key="
            URLPath += Constants.apiKey
        }
        
        return URLPath
    }
    
    var apiKeyRequired: Bool {
        switch self {
        case .house:
            return false
        default:
            return true
        }
    }
}
