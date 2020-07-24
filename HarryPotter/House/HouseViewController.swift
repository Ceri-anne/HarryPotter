//
//  Created by Ceri-anne Jackson on 23/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import UIKit

class HouseViewController: UIViewController {

    @IBOutlet weak var houseLabel: UILabel!
    
    var house: House!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Hogwarts House"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
  
    private func setUpView() {
        
        self.houseLabel.text = house.rawValue
        
        switch house {
        case .Hufflepuff:
            self.houseLabel.textColor = .orange
        case .Gryffindor:
            self.houseLabel.textColor = .red
        case .Slytherin:
            self.houseLabel.textColor = .green
        case .Ravenclaw:
            self.houseLabel.textColor = .blue
        case .none:
            self.houseLabel.textColor = .black
        }
    
    }


}

