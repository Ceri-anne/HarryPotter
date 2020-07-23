//
//  Created by Ceri-anne Jackson on 23/07/2020.
//  Copyright © 2020 Ceri-anne Jackson. All rights reserved.
//

import UIKit

class CharactersViewController: UIViewController {
    
    var characters: [Character]!
    
    @IBOutlet weak var charactersText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
  
    private func setUpView() {
        charactersText.text = characters[0].name
    }

}
