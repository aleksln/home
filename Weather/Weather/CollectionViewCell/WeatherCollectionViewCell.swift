//
//  WeatherCollectionViewCell.swift
//  Weather
//
//  Created by Admin on 2/5/21.
//

import UIKit

let identifier = "WeatherCollectionViewCell"

func nib() -> UINib {
    return UINib(nibName: "WeatherCollectionViewCell", bundle: nil)
}

class WeatherCollectionViewCell: UICollectionViewCell {

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var tempLabel: UILabel!
    
    func configure(with model: HourlyWeatherEntry) {
        self.tempLabel?.text = "\(model.temperature)"
        self.iconImageView?.contentMode = .scaleAspectFit
        self.iconImageView?.image = UIImage(named: "clear")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
