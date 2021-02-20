//
//  HourlyTableViewCell.swift
//  Weather
//
//  Created by Admin on 2/2/21.
//

import UIKit

class HourlyTableViewCell: UITableViewCell {
    
    //@IBOutlet var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static let identifier = "HourlyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "HourlyTableViewCell", bundle: nil)
    }
   
}


