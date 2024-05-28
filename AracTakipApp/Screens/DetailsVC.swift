//
//  DetailsVC.swift
//  AracTakipApp
//
//  Created by Selçuk İleri on 28.05.2024.
//

import UIKit
import SnapKit

class DetailsVC: UIViewController {

    let carNameView = CarDetailsView(frame: .zero, nameInput: "Car's Name", answerTfPlaceholder: "Enter your car name")
    let carColorView = CarDetailsView(frame: .zero, nameInput: "Car's Color", answerTfPlaceholder: "Enter your car color")
    let carKmView = CarDetailsView(frame: .zero, nameInput: "Car's Km", answerTfPlaceholder: "Enter your car km")
    let carYearView = CarDetailsView(frame: .zero, nameInput: "Car's Year", answerTfPlaceholder: "Enter your car year")
    let carLastMaintenanceView = CarDetailsView(frame: .zero, nameInput: "Car's Last Maintenance Year", answerTfPlaceholder: "Enter your car last maintenance date")
    let saveButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        configure()
    }
    
    private func configure(){
        view.backgroundColor = .systemBackground
        view.addSubviews(carNameView,carColorView,carKmView,carYearView,carLastMaintenanceView,saveButton)
        
        carNameView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(100)
        }
        
        carColorView.snp.makeConstraints { make in
            make.top.equalTo(carNameView.snp.bottom).offset(16)
            make.leading.equalTo(carNameView.snp.leading)
            make.trailing.equalTo(carNameView.snp.trailing)
            make.height.equalTo(carNameView.snp.height)
        }
        
        carKmView.snp.makeConstraints { make in
            make.top.equalTo(carColorView.snp.bottom).offset(16)
            make.leading.equalTo(carColorView.snp.leading)
            make.trailing.equalTo(carColorView.snp.trailing)
            make.height.equalTo(carColorView.snp.height)
        }
        
        carYearView.snp.makeConstraints { make in
            make.top.equalTo(carKmView.snp.bottom).offset(16)
            make.leading.equalTo(carKmView.snp.leading)
            make.trailing.equalTo(carKmView.snp.trailing)
            make.height.equalTo(carKmView.snp.height)
        }
        
        carLastMaintenanceView.snp.makeConstraints { make in
            make.top.equalTo(carYearView.snp.bottom).offset(16)
            make.leading.equalTo(carYearView.snp.leading)
            make.trailing.equalTo(carYearView.snp.trailing)
            make.height.equalTo(carYearView.snp.height)
        }
        
        saveButton.setTitle("Save", for: .normal)
        saveButton.backgroundColor = .systemBlue
        saveButton.snp.makeConstraints { make in
            make.top.equalTo(carLastMaintenanceView.snp.bottom).offset(30)
            make.horizontalEdges.equalToSuperview().inset(50)
            make.height.equalTo(60)
        }
    }

}
