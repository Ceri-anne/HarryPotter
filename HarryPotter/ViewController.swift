//
//  Created by Ceri-anne Jackson on 23/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func chooseHouseTapped(_ sender: Any) {
        fetchHouse()
    }
    
    @IBOutlet weak var houseLabel: UILabel!
    
    private var house: House? {
        didSet {
            if let house = house {
                DispatchQueue.main.async {
                    self.updateView(with: house)
                }
            }
        }
    }
    
    private func fetchHouse() {
        Networking().fetchHouse() { house in
            self.house = house
        }
    }
    
    private func updateView(with house: House) {
        
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
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

