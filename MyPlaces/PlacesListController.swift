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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        
        cell.nameLabel?.text = places[indexPath.row]
        cell.imageOfPlace?.image = UIImage(named: "\(indexPath.row % 3 + 1)")
        
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        return cell
    }
    
    //MARK: - Table View Delegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}
