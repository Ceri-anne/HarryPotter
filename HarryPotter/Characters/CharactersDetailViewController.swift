//
//  Created by Ceri-anne Jackson on 24/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import UIKit

class CharactersDetailViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var role: UILabel!
    @IBOutlet weak var house: UILabel!
    @IBOutlet weak var school: UILabel!
    @IBOutlet weak var ministryOfMagic: UILabel!
    @IBOutlet weak var orderOfThePhoenix: UILabel!
    @IBOutlet weak var dumbledoresArmy: UILabel!
    @IBOutlet weak var deathEater: UILabel!
    @IBOutlet weak var bloodStatus: UILabel!
    @IBOutlet weak var species: UILabel!
    
    var character: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    private func setUpView() {
        name.text = character.name
        role.text = character.role
        house.text = character.house
        school.text = character.school
        ministryOfMagic.text = character.ministryOfMagic == true ? "Yes" : "No"
        orderOfThePhoenix.text = character.orderOfThePhoenix == true ? "Yes" : "No"
        dumbledoresArmy.text = character.dumbledoresArmy == true ? "Yes" : "No"
        deathEater.text = character.deathEater == true ? "Yes" : "No"
        bloodStatus.text = character.bloodStatus
        species.text = character.species
    }
    
    
}
