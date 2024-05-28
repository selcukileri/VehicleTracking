//
//  CarDetailsView.swift
//  AracTakipApp
//
//  Created by Selçuk İleri on 28.05.2024.
//

import UIKit

class CarDetailsView: UIView {

    let nameText = UILabel()
    let answerTf = UITextField()

    init(frame: CGRect, nameInput: String, answerTfPlaceholder: String) {
        super.init(frame: frame)
        configure(nameTextInput: nameInput, answerTfPlaceholder: answerTfPlaceholder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(nameTextInput: String, answerTfPlaceholder: String){
        addSubview(nameText)
        addSubview(answerTf)
        backgroundColor = .systemBackground
        nameText.numberOfLines = 0
        nameText.text = "\(nameTextInput): "
        nameText.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        nameText.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.leading.equalToSuperview().offset(8)
            make.height.equalTo(40)
            make.width.equalTo(150)
        }
        answerTf.placeholder = answerTfPlaceholder
        answerTf.textColor = .label
        answerTf.snp.makeConstraints { make in
            make.leading.equalTo(nameText.snp.trailing).offset(16)
            make.height.equalTo(nameText.snp.height)
            make.top.equalTo(nameText.snp.top)
            make.trailing.equalToSuperview().offset(-8)
        }
    }

}
