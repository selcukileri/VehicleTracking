//
//  CarAvatarImageView.swift
//  AracTakipApp
//
//  Created by Selçuk İleri on 28.05.2024.
//

import UIKit

class CarAvatarImageView: UIImageView {

    let placeholderImage = Images.carPlaceholderImage

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }

}
