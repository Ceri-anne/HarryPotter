//
//  Created by Ceri-anne Jackson on 23/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBAction func chooseHouseTapped(_ sender: Any) {
        fetchHouse()
    }
    
    @IBAction func viewCharacterTapped(_ sender: Any) {
        fetchCharacters()
    }
    
    @IBAction func viewSpellsTapped(_ sender: Any) {
        fetchSpells()
    }
    
    private func fetchCharacters() {
        Networking().fetchCharacters() { characters in
            self.loadCharactersViewController(with: characters)
        }
    }
    
    private func fetchHouse() {
         Networking().fetchHouse() { house in
            self.loadHouseViewController(with: house)
        }
    }
    
    private func fetchSpells() {
        Networking().fetchSpells() { spells in
            self.loadSpellsViewController(with: spells)
        }
    }
    
    private func loadHouseViewController(with house: House) {
        
        DispatchQueue.main.async {
            
            guard let viewController = UIStoryboard(name: "House", bundle: self.nibBundle).instantiateInitialViewController() as? HouseViewController else {
                return
            }
            
            viewController.house = house
            self.navigationController?.pushViewController(viewController , animated: true)
        }
    }
    
    private func loadCharactersViewController(with characters: [Character]) {
           
        DispatchQueue.main.async {
               
            guard let viewController = UIStoryboard(name: "Characters", bundle: self.nibBundle).instantiateInitialViewController() as? CharactersViewController else {
                return
            }
               
            viewController.characters = characters
            self.navigationController?.pushViewController(viewController , animated: true)
        }
    }
    
    private func loadSpellsViewController(with spells: [Spell]) {
              
        DispatchQueue.main.async {
              
            guard let viewController = UIStoryboard(name: "Spells", bundle: self.nibBundle).instantiateInitialViewController() as? SpellsViewController else {
                return
            }
              
            viewController.spells = spells
            self.navigationController?.pushViewController(viewController , animated: true)
        }
    }
}

