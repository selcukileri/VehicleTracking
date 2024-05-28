//
//  HomeVC.swift
//  AracTakipApp
//
//  Created by Selçuk İleri on 28.05.2024.
//

import UIKit
import SnapKit

class HomeVC: UIViewController {

    let carList = [Car]()
        
    private let timelineTableView: UITableView = {
       let tableView = UITableView()
        tableView.register(HomeCell.self, forCellReuseIdentifier: HomeCell.reuseID)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configure()
        configureTableView()
    }
    
    private func configure(){
        view.backgroundColor = .systemPink
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem = addButton
        
    }
    
    private func configureTableView(){
        view.addSubview(timelineTableView)
        
        timelineTableView.frame = view.bounds
        timelineTableView.dataSource = self
        timelineTableView.delegate = self
        timelineTableView.rowHeight = 120
        timelineTableView.register(HomeCell.self, forCellReuseIdentifier: HomeCell.reuseID)
    }
    
    @objc func addTapped(){
        let destVC = DetailsVC()
        navigationController?.pushViewController(destVC, animated: true)
    }


}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeCell.reuseID, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destVC = DetailsVC()
        navigationController?.pushViewController(destVC, animated: true)
    }
}
