//
//  HoroscopeViewCell.swift
//  Horoscopo-IOS
//
//  Created by Mañanas on 31/7/24.
//

import Foundation
import UIKit
class HoroscopeViewCell: UITableViewCell {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var datesLabel: UILabel!
    @IBOutlet weak var favoriteIcon: UIImageView!
    
    func render(horoscope: Horoscope) {
        nameLabel.text = horoscope.name
        logoImageView.image = horoscope.logo
        datesLabel.text = horoscope.dates
        
        let isFavorite = UserDefaults.standard.string(forKey: "FAVORITE_HOROSCOPE") == horoscope.id
        if isFavorite {
            favoriteIcon.isHidden = false
        } else {
            favoriteIcon.isHidden = true
        }
    }
}
