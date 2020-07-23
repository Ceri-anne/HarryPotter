//
//  Created by Ceri-anne Jackson on 23/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import Foundation

struct Character: Decodable {
    let name: String
    let role: String?
    let house: String?
    let school: String?
    let ministryOfMagic: Bool?
    let orderOfThePhoenix: Bool?
    let dumbledoresArmy: Bool?
    let deathEater: Bool?
    let bloodStatus: String?
    let species: String?
}
