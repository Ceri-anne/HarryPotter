//
//  Created by Ceri-anne Jackson on 24/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import UIKit

class SpellsViewController: UIViewController {

    var spells: [Spell]!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Spells"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension SpellsViewController: UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        spells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpellCell", for: indexPath)
        cell.textLabel?.text = spells[indexPath.row].spell
    
       return cell
    }
}
