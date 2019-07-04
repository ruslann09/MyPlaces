//
//  PlacesListController.swift
//  MyPlaces
//
//  Created by Ruslan Netesov on 7/3/19.
//  Copyright © 2019 Ruslan Netesov. All rights reserved.
//

import UIKit

class PlacesListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let places = [
        "Puppen Haus", "Beerman на Речке", "Гриль и Бутыль", "Аджикинежаль",
        "#СИБИРЬСИБИРЬ", "IL патио", "Мятный карась",
        "Beerman&Пицца", "Twiggy", "Амбар", "Своя компания",
        "Гудман", "Фенимор Купер", "Хороший год", "Городъ N"
    ]
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1 //by default return 1 always
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = places[indexPath.row]
        cell?.imageView?.image = UIImage(named: "\(indexPath.row % 3 + 1)")
        
        cell?.imageView?.layer.cornerRadius = cell?.frame.size.height / 2
        cell?.imageView?.clipsToBounds = true
        
        return cell!
    }
    
    //MARK: - Table View Delegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}
