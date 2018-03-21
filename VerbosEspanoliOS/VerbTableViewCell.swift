//
//  VerbTableViewCell.swift
//  VerbosEspanoliOS
//
//  Created by xengar on 2018-03-21.
//  Copyright © 2018 xengar. All rights reserved.
//

import UIKit

// MARK: - VerbTableViewCell
class VerbTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var infinitive : UILabel!
    @IBOutlet weak var translation : UILabel!
    @IBOutlet weak var definition : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
