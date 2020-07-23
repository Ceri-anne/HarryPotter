//
//  Created by Ceri-anne Jackson on 23/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import Foundation

enum API: String {

    case house = "sortingHat"
    
    var url: String {
        let baseURL = "https://www.potterapi.com/v1/"
        return baseURL + self.rawValue
    }
}
