//
//  HomeCell.swift
//  AracTakipApp
//
//  Created by Selçuk İleri on 28.05.2024.
//

import UIKit

class HomeCell: UITableViewCell {

    static let reuseID = "HomeCell"
    let nameText = UILabel()
    let carImage = CarAvatarImageView(frame: .zero)

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        
        nameText.text = "deneme"
        
        addSubview(nameText)
        addSubview(carImage)
        
        let padding: CGFloat = 12
        
        carImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(12)
            make.height.width.equalTo(60)
        }
        
        nameText.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(carImage.snp.trailing).offset(24)
            make.trailing.equalToSuperview().offset(-padding)
            make.height.equalTo(40)
        }
    }

}
